; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_lomac = type { i32, %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_LOMAC_TYPE_UNDEF = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_AUX = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_lomac*)* @lomac_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_valid(%struct.mac_lomac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac_lomac*, align 8
  store %struct.mac_lomac* %0, %struct.mac_lomac** %3, align 8
  %4 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %5 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %12 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 130, label %15
    i32 131, label %15
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %10, %10, %10, %10
  br label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %106

18:                                               ; preds = %15
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %21 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAC_LOMAC_TYPE_UNDEF, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %2, align 4
  br label %106

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %18
  %30 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %31 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %38 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %42 [
    i32 130, label %41
    i32 131, label %41
    i32 129, label %41
    i32 128, label %41
  ]

41:                                               ; preds = %36, %36, %36, %36
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %2, align 4
  br label %106

44:                                               ; preds = %41
  br label %55

45:                                               ; preds = %29
  %46 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %47 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MAC_LOMAC_TYPE_UNDEF, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %2, align 4
  br label %106

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %57 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  %63 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %64 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %68 [
    i32 130, label %67
    i32 131, label %67
    i32 129, label %67
    i32 128, label %67
  ]

67:                                               ; preds = %62, %62, %62, %62
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %2, align 4
  br label %106

70:                                               ; preds = %67
  %71 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %72 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %76 [
    i32 130, label %75
    i32 131, label %75
    i32 129, label %75
    i32 128, label %75
  ]

75:                                               ; preds = %70, %70, %70, %70
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %2, align 4
  br label %106

78:                                               ; preds = %75
  %79 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %80 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %79, i32 0, i32 1
  %81 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %82 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %81, i32 0, i32 2
  %83 = call i32 @lomac_dominate_element(%struct.TYPE_7__* %80, %struct.TYPE_8__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %2, align 4
  br label %106

87:                                               ; preds = %78
  br label %105

88:                                               ; preds = %55
  %89 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %90 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MAC_LOMAC_TYPE_UNDEF, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %97 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MAC_LOMAC_TYPE_UNDEF, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95, %88
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %2, align 4
  br label %106

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %87
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %102, %85, %76, %68, %52, %42, %26, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @lomac_dominate_element(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
