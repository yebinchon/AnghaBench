; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_main.c_pqi_find_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_main.c_pqi_find_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ident = type { i64, i64, i64, i64 }

@pqi_identifiers = common dso_local global %struct.pqi_ident* null, align 8
@pqi_family_identifiers = common dso_local global %struct.pqi_ident* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pqi_ident* (i32)* @pqi_find_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pqi_ident* @pqi_find_ident(i32 %0) #0 {
  %2 = alloca %struct.pqi_ident*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pqi_ident*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_vendor(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @pci_get_device(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pci_get_subvendor(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @pci_get_subdevice(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.pqi_ident*, %struct.pqi_ident** @pqi_identifiers, align 8
  store %struct.pqi_ident* %17, %struct.pqi_ident** %4, align 8
  br label %18

18:                                               ; preds = %50, %1
  %19 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %20 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %25 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %31 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %37 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %43 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  store %struct.pqi_ident* %48, %struct.pqi_ident** %2, align 8
  br label %79

49:                                               ; preds = %41, %35, %29, %23
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %52 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %51, i32 1
  store %struct.pqi_ident* %52, %struct.pqi_ident** %4, align 8
  br label %18

53:                                               ; preds = %18
  %54 = load %struct.pqi_ident*, %struct.pqi_ident** @pqi_family_identifiers, align 8
  store %struct.pqi_ident* %54, %struct.pqi_ident** %4, align 8
  br label %55

55:                                               ; preds = %75, %53
  %56 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %57 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %62 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %68 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  store %struct.pqi_ident* %73, %struct.pqi_ident** %2, align 8
  br label %79

74:                                               ; preds = %66, %60
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.pqi_ident*, %struct.pqi_ident** %4, align 8
  %77 = getelementptr inbounds %struct.pqi_ident, %struct.pqi_ident* %76, i32 1
  store %struct.pqi_ident* %77, %struct.pqi_ident** %4, align 8
  br label %55

78:                                               ; preds = %55
  store %struct.pqi_ident* null, %struct.pqi_ident** %2, align 8
  br label %79

79:                                               ; preds = %78, %72, %47
  %80 = load %struct.pqi_ident*, %struct.pqi_ident** %2, align 8
  ret %struct.pqi_ident* %80
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
