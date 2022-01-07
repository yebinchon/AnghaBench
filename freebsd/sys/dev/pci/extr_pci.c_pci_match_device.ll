; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_match_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_table = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_device_table* @pci_match_device(i32 %0, %struct.pci_device_table* %1, i64 %2) #0 {
  %4 = alloca %struct.pci_device_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_device_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.pci_device_table* %1, %struct.pci_device_table** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @pci_get_vendor(i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @pci_get_device(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @pci_get_subvendor(i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @pci_get_subdevice(i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @pci_get_class(i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @pci_get_subclass(i32 %26)
  store i64 %27, i64* %14, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @pci_get_revid(i32 %28)
  store i64 %29, i64* %15, align 8
  br label %30

30:                                               ; preds = %137, %3
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %7, align 8
  %33 = icmp ugt i64 %31, 0
  br i1 %33, label %34, label %140

34:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  %35 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %36 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %35, i32 0, i32 13
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %42 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %50 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %49, i32 0, i32 12
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %56 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %53, %48
  %63 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %64 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %63, i32 0, i32 11
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %70 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %67, %62
  %77 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %78 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %77, i32 0, i32 10
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %84 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %81, %76
  %91 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %92 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %98 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %95, %90
  %105 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %106 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %112 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %109, %104
  %119 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %120 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load i64, i64* %15, align 8
  %125 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %126 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %123, %118
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  store %struct.pci_device_table* %136, %struct.pci_device_table** %4, align 8
  br label %141

137:                                              ; preds = %132
  %138 = load %struct.pci_device_table*, %struct.pci_device_table** %6, align 8
  %139 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %138, i32 1
  store %struct.pci_device_table* %139, %struct.pci_device_table** %6, align 8
  br label %30

140:                                              ; preds = %30
  store %struct.pci_device_table* null, %struct.pci_device_table** %4, align 8
  br label %141

141:                                              ; preds = %140, %135
  %142 = load %struct.pci_device_table*, %struct.pci_device_table** %4, align 8
  ret %struct.pci_device_table* %142
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
