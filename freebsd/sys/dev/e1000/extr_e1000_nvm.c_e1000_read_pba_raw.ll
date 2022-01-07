; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_pba_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_nvm.c_e1000_read_pba_raw.c"
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
define dso_local i64 @e1000_read_pba_raw(%struct.e1000_hw* %0, i32* %1, i64 %2, i32 %3, %struct.e1000_pba* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_pba*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.e1000_pba* %4, %struct.e1000_pba** %11, align 8
  %14 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %15 = icmp eq %struct.e1000_pba* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i64, i64* @E1000_ERR_PARAM, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %6, align 8
  br label %148

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %24 = load i64, i64* @NVM_PBA_OFFSET_0, align 8
  %25 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %26 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i64 @e1000_read_nvm(%struct.e1000_hw* %23, i64 %24, i32 2, i32* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i64, i64* %12, align 8
  store i64 %33, i64* %6, align 8
  br label %148

34:                                               ; preds = %22
  br label %60

35:                                               ; preds = %19
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @NVM_PBA_OFFSET_1, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* @NVM_PBA_OFFSET_0, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %45 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* @NVM_PBA_OFFSET_1, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %53 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %51, i32* %55, align 4
  br label %59

56:                                               ; preds = %35
  %57 = load i64, i64* @E1000_ERR_PARAM, align 8
  %58 = sub nsw i64 0, %57
  store i64 %58, i64* %6, align 8
  br label %148

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %62 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NVM_PBA_PTR_GUARD, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %146

68:                                               ; preds = %60
  %69 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %70 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i64, i64* @E1000_ERR_PARAM, align 8
  %75 = sub nsw i64 0, %74
  store i64 %75, i64* %6, align 8
  br label %148

76:                                               ; preds = %68
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @e1000_get_pba_block_size(%struct.e1000_hw* %77, i32* %78, i64 %79, i32* %13)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i64, i64* %12, align 8
  store i64 %84, i64* %6, align 8
  br label %148

85:                                               ; preds = %76
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i64, i64* @E1000_ERR_PARAM, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %6, align 8
  br label %148

92:                                               ; preds = %85
  %93 = load i32*, i32** %8, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %97 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %98 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %105 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @e1000_read_nvm(%struct.e1000_hw* %96, i64 %102, i32 %103, i32* %106)
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %95
  %111 = load i64, i64* %12, align 8
  store i64 %111, i64* %6, align 8
  br label %148

112:                                              ; preds = %95
  br label %145

113:                                              ; preds = %92
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %116 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = icmp ugt i64 %114, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %113
  %125 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %126 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load %struct.e1000_pba*, %struct.e1000_pba** %11, align 8
  %130 = getelementptr inbounds %struct.e1000_pba, %struct.e1000_pba* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %128, i64 %134
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memcpy(i32* %127, i32* %135, i32 %139)
  br label %144

141:                                              ; preds = %113
  %142 = load i64, i64* @E1000_ERR_PARAM, align 8
  %143 = sub nsw i64 0, %142
  store i64 %143, i64* %6, align 8
  br label %148

144:                                              ; preds = %124
  br label %145

145:                                              ; preds = %144, %112
  br label %146

146:                                              ; preds = %145, %60
  %147 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %147, i64* %6, align 8
  br label %148

148:                                              ; preds = %146, %141, %110, %89, %83, %73, %56, %32, %16
  %149 = load i64, i64* %6, align 8
  ret i64 %149
}

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i64, i32, i32*) #1

declare dso_local i64 @e1000_get_pba_block_size(%struct.e1000_hw*, i32*, i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
