; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.ena_adapter* }
%struct.ena_adapter = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ioctl promisc/allmulti\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i64)* @ena_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_ioctl(%struct.TYPE_7__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ena_adapter*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %12, align 8
  store %struct.ena_adapter* %13, %struct.ena_adapter** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %140 [
    i32 128, label %17
    i32 130, label %42
    i32 134, label %97
    i32 133, label %97
    i32 129, label %98
    i32 132, label %98
    i32 131, label %105
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %145

26:                                               ; preds = %17
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 0
  %29 = call i32 @sx_xlock(i32* %28)
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %31 = call i32 @ena_down(%struct.ena_adapter* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ena_change_mtu(%struct.TYPE_7__* %32, i32 %35)
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %38 = call i32 @ena_up(%struct.ena_adapter* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %39, i32 0, i32 0
  %41 = call i32 @sx_unlock(i32* %40)
  br label %145

42:                                               ; preds = %3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IFF_UP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = call i32 @if_getdrvflags(%struct.TYPE_7__* %50)
  %52 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IFF_PROMISC, align 4
  %60 = load i32, i32* @IFF_ALLMULTI, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %55
  br label %79

70:                                               ; preds = %49
  %71 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %72 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %71, i32 0, i32 0
  %73 = call i32 @sx_xlock(i32* %72)
  %74 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %75 = call i32 @ena_up(%struct.ena_adapter* %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %77 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %76, i32 0, i32 0
  %78 = call i32 @sx_unlock(i32* %77)
  br label %79

79:                                               ; preds = %70, %69
  br label %96

80:                                               ; preds = %42
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = call i32 @if_getdrvflags(%struct.TYPE_7__* %81)
  %83 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %88 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %87, i32 0, i32 0
  %89 = call i32 @sx_xlock(i32* %88)
  %90 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %91 = call i32 @ena_down(%struct.ena_adapter* %90)
  %92 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %93 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %92, i32 0, i32 0
  %94 = call i32 @sx_unlock(i32* %93)
  br label %95

95:                                               ; preds = %86, %80
  br label %96

96:                                               ; preds = %95, %79
  br label %145

97:                                               ; preds = %3, %3
  br label %145

98:                                               ; preds = %3, %3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %101 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %102 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %101, i32 0, i32 1
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @ifmedia_ioctl(%struct.TYPE_7__* %99, %struct.ifreq* %100, i32* %102, i32 %103)
  store i32 %104, i32* %9, align 4
  br label %145

105:                                              ; preds = %3
  store i32 0, i32* %10, align 4
  %106 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %107 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %115 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  store i32 1, i32* %10, align 4
  br label %119

119:                                              ; preds = %113, %105
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = call i32 @if_getdrvflags(%struct.TYPE_7__* %123)
  %125 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %130 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %129, i32 0, i32 0
  %131 = call i32 @sx_xlock(i32* %130)
  %132 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %133 = call i32 @ena_down(%struct.ena_adapter* %132)
  %134 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %135 = call i32 @ena_up(%struct.ena_adapter* %134)
  store i32 %135, i32* %9, align 4
  %136 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %137 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %136, i32 0, i32 0
  %138 = call i32 @sx_unlock(i32* %137)
  br label %139

139:                                              ; preds = %128, %122, %119
  br label %145

140:                                              ; preds = %3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @ether_ioctl(%struct.TYPE_7__* %141, i32 %142, i64 %143)
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %140, %139, %98, %97, %96, %26, %25
  %146 = load i32, i32* %9, align 4
  ret i32 %146
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ena_down(%struct.ena_adapter*) #1

declare dso_local i32 @ena_change_mtu(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ena_up(%struct.ena_adapter*) #1

declare dso_local i32 @sx_unlock(i32*) #1

declare dso_local i32 @if_getdrvflags(%struct.TYPE_7__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.TYPE_7__*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.TYPE_7__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
