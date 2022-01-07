; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_write_pba_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_write_pba_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }
%struct.e1000_pba = type { i32*, i32* }

@E1000_ERR_PARAM = common dso_local global i64 0, align 8
@NVM_PBA_OFFSET_0 = common dso_local global i64 0, align 8
@NVM_PBA_OFFSET_1 = common dso_local global i64 0, align 8
@NVM_PBA_PTR_GUARD = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_write_pba_raw(%struct.e1000_hw* %0, i32* %1, i64 %2, %struct.e1000_pba* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.e1000_pba*, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.e1000_pba* %3, %struct.e1000_pba** %9, align 8
  %11 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %12 = icmp eq %struct.e1000_pba* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i64, i64* @E1000_ERR_PARAM, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %5, align 8
  br label %141

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %21 = load i64, i64* @NVM_PBA_OFFSET_0, align 8
  %22 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %23 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = call i64 @e1000_write_nvm(%struct.e1000_hw* %20, i64 %21, i32 2, i32* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* %5, align 8
  br label %141

31:                                               ; preds = %19
  br label %57

32:                                               ; preds = %16
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @NVM_PBA_OFFSET_1, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %38 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* @NVM_PBA_OFFSET_0, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %46 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* @NVM_PBA_OFFSET_1, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  br label %56

53:                                               ; preds = %32
  %54 = load i64, i64* @E1000_ERR_PARAM, align 8
  %55 = sub nsw i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %141

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %59 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NVM_PBA_PTR_GUARD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %139

65:                                               ; preds = %57
  %66 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %67 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* @E1000_ERR_PARAM, align 8
  %72 = sub nsw i64 0, %71
  store i64 %72, i64* %5, align 8
  br label %141

73:                                               ; preds = %65
  %74 = load i32*, i32** %7, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %78 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %79 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %85 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %90 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @e1000_write_nvm(%struct.e1000_hw* %77, i64 %83, i32 %88, i32* %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %76
  %96 = load i64, i64* %10, align 8
  store i64 %96, i64* %5, align 8
  br label %141

97:                                               ; preds = %76
  br label %138

98:                                               ; preds = %73
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %101 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %106 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %104, %109
  %111 = sext i32 %110 to i64
  %112 = icmp ugt i64 %99, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %98
  %114 = load i32*, i32** %7, align 8
  %115 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %116 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %114, i64 %120
  %122 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %123 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.e1000_pba*, %struct.e1000_pba** %9, align 8
  %126 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(i32* %121, i32* %124, i32 %132)
  br label %137

134:                                              ; preds = %98
  %135 = load i64, i64* @E1000_ERR_PARAM, align 8
  %136 = sub nsw i64 0, %135
  store i64 %136, i64* %5, align 8
  br label %141

137:                                              ; preds = %113
  br label %138

138:                                              ; preds = %137, %97
  br label %139

139:                                              ; preds = %138, %57
  %140 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %139, %134, %95, %70, %53, %29, %13
  %142 = load i64, i64* %5, align 8
  ret i64 %142
}

declare dso_local i64 @e1000_write_nvm(%struct.e1000_hw*, i64, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
