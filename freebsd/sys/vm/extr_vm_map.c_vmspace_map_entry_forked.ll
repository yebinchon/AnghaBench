; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_map_entry_forked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_map_entry_forked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmspace = type { i32, i64, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@MAP_ENTRY_GUARD = common dso_local global i32 0, align 4
@MAP_ENTRY_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_ENTRY_GROWS_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmspace*, %struct.vmspace*, %struct.TYPE_5__*)* @vmspace_map_entry_forked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmspace_map_entry_forked(%struct.vmspace* %0, %struct.vmspace* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.vmspace*, align 8
  %5 = alloca %struct.vmspace*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vmspace* %0, %struct.vmspace** %4, align 8
  store %struct.vmspace* %1, %struct.vmspace** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %143

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %26 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %24
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MAP_ENTRY_GROWS_DOWN, align 4
  %36 = load i32, i32* @MAP_ENTRY_GROWS_UP, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %16
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @btoc(i64 %41)
  %43 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %44 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  br label %143

49:                                               ; preds = %16
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %54 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %49
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %62 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %65 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ctob(i32 %66)
  %68 = add nsw i64 %63, %67
  %69 = icmp slt i64 %60, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %57
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %75 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %78 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @ctob(i32 %79)
  %81 = add nsw i64 %76, %80
  %82 = call i64 @MIN(i64 %73, i64 %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = call i64 @btoc(i64 %87)
  %89 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %90 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %142

95:                                               ; preds = %57, %49
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %100 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sge i64 %98, %101
  br i1 %102, label %103, label %141

103:                                              ; preds = %95
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %108 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %111 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @ctob(i32 %112)
  %114 = add nsw i64 %109, %113
  %115 = icmp slt i64 %106, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %103
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %121 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %124 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @ctob(i32 %125)
  %127 = add nsw i64 %122, %126
  %128 = call i64 @MIN(i64 %119, i64 %127)
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  %134 = call i64 @btoc(i64 %133)
  %135 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %136 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  br label %141

141:                                              ; preds = %116, %103, %95
  br label %142

142:                                              ; preds = %141, %70
  br label %143

143:                                              ; preds = %15, %142, %40
  ret void
}

declare dso_local i64 @btoc(i64) #1

declare dso_local i64 @ctob(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
