; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_find_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_isa_common.c_isa_find_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_config = type { i32, i64* }
%struct.resource = type { i32 }

@ISA_NIRQ = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.isa_config*, %struct.isa_config*)* @isa_find_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_find_irq(i32 %0, %struct.isa_config* %1, %struct.isa_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isa_config*, align 8
  %6 = alloca %struct.isa_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.isa_config* %1, %struct.isa_config** %5, align 8
  store %struct.isa_config* %2, %struct.isa_config** %6, align 8
  %13 = load i32, i32* @ISA_NIRQ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca %struct.resource*, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %29, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ISA_NIRQ, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SYS_RES_IRQ, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @bus_delete_resource(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.resource*, %struct.resource** %16, i64 %27
  store %struct.resource* null, %struct.resource** %28, align 8
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %17

32:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  %33 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %34 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %37 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %107, %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %41 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %110

44:                                               ; preds = %38
  %45 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %46 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %56 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 0, i64* %60, align 8
  br label %107

61:                                               ; preds = %44
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @find_first_bit(i64 %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %95, %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %99

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SYS_RES_IRQ, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @bus_set_resource(i32 %68, i32 %69, i32 %70, i32 %71, i32 1)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SYS_RES_IRQ, align 4
  %75 = call %struct.resource* @bus_alloc_resource_any(i32 %73, i32 %74, i32* %8, i32 0)
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.resource*, %struct.resource** %16, i64 %77
  store %struct.resource* %75, %struct.resource** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.resource*, %struct.resource** %16, i64 %80
  %82 = load %struct.resource*, %struct.resource** %81, align 8
  %83 = icmp ne %struct.resource* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %67
  %85 = load i32, i32* %12, align 4
  %86 = shl i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.isa_config*, %struct.isa_config** %6, align 8
  %89 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %87, i64* %93, align 8
  br label %99

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @find_next_bit(i64 %96, i32 %97)
  store i32 %98, i32* %12, align 4
  br label %64

99:                                               ; preds = %84, %64
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.resource*, %struct.resource** %16, i64 %101
  %103 = load %struct.resource*, %struct.resource** %102, align 8
  %104 = icmp ne %struct.resource* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  store i32 0, i32* %7, align 4
  br label %110

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %54
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %38

110:                                              ; preds = %105, %38
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %131, %110
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @ISA_NIRQ, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.resource*, %struct.resource** %16, i64 %117
  %119 = load %struct.resource*, %struct.resource** %118, align 8
  %120 = icmp ne %struct.resource* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @SYS_RES_IRQ, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.resource*, %struct.resource** %16, i64 %126
  %128 = load %struct.resource*, %struct.resource** %127, align 8
  %129 = call i32 @bus_release_resource(i32 %122, i32 %123, i32 %124, %struct.resource* %128)
  br label %130

130:                                              ; preds = %121, %115
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %111

134:                                              ; preds = %111
  %135 = load i32, i32* %7, align 4
  %136 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %136)
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #2

declare dso_local i32 @find_first_bit(i64) #2

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #2

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @find_next_bit(i64, i32) #2

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
