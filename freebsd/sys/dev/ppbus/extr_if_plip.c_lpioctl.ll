; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lpioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lpioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.lp_data* }
%struct.lp_data = type { %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ifaddr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ifreq = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MLPIPHDRLEN = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"LP:ioctl(0x%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @lpioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lp_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifaddr*, align 8
  %12 = alloca %struct.ifreq*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 2
  %17 = load %struct.lp_data*, %struct.lp_data** %16, align 8
  store %struct.lp_data* %17, %struct.lp_data** %8, align 8
  %18 = load %struct.lp_data*, %struct.lp_data** %8, align 8
  %19 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* %7, align 8
  %24 = inttoptr i64 %23 to %struct.ifaddr*
  store %struct.ifaddr* %24, %struct.ifaddr** %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = inttoptr i64 %25 to %struct.ifreq*
  store %struct.ifreq* %26, %struct.ifreq** %12, align 8
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %157 [
    i32 134, label %28
    i32 130, label %28
    i32 129, label %43
    i32 128, label %84
    i32 131, label %133
    i32 135, label %141
    i32 133, label %141
    i32 132, label %155
  ]

28:                                               ; preds = %3, %3
  %29 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %30 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 136
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %36, i32* %4, align 4
  br label %162

37:                                               ; preds = %28
  %38 = load i32, i32* @IFF_UP, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %3, %37
  store i32 0, i32* %14, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ppb_lock(i32 %44)
  %46 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IFF_UP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %43
  %53 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.lp_data*, %struct.lp_data** %8, align 8
  %61 = call i32 @lpstop(%struct.lp_data* %60)
  br label %80

62:                                               ; preds = %52, %43
  %63 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IFF_UP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %78 = call i32 @lpinit_locked(%struct.ifnet* %77)
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %76, %69, %62
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ppb_unlock(i32 %81)
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %4, align 4
  br label %162

84:                                               ; preds = %3
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ppb_lock(i32 %85)
  %87 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %84
  %94 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %95 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MLPIPHDRLEN, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i32, i32* @M_DEVBUF, align 4
  %100 = load i32, i32* @M_NOWAIT, align 4
  %101 = call i32* @malloc(i64 %98, i32 %99, i32 %100)
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %93
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @ppb_unlock(i32 %105)
  %107 = load i32, i32* @ENOBUFS, align 4
  store i32 %107, i32* %4, align 4
  br label %162

108:                                              ; preds = %93
  %109 = load %struct.lp_data*, %struct.lp_data** %8, align 8
  %110 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.lp_data*, %struct.lp_data** %8, align 8
  %115 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @M_DEVBUF, align 4
  %118 = call i32 @free(i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %108
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.lp_data*, %struct.lp_data** %8, align 8
  %122 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %121, i32 0, i32 1
  store i32* %120, i32** %122, align 8
  br label %123

123:                                              ; preds = %119, %84
  %124 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %125 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.lp_data*, %struct.lp_data** %8, align 8
  %128 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i64 %126, i64* %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @ppb_unlock(i32 %131)
  br label %161

133:                                              ; preds = %3
  %134 = load %struct.lp_data*, %struct.lp_data** %8, align 8
  %135 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %140 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %161

141:                                              ; preds = %3, %3
  %142 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %143 = icmp eq %struct.ifreq* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %145, i32* %4, align 4
  br label %162

146:                                              ; preds = %141
  %147 = load %struct.ifreq*, %struct.ifreq** %12, align 8
  %148 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %152 [
    i32 136, label %151
  ]

151:                                              ; preds = %146
  br label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %153, i32* %4, align 4
  br label %162

154:                                              ; preds = %151
  br label %161

155:                                              ; preds = %3
  %156 = load i32, i32* @EINVAL, align 4
  store i32 %156, i32* %4, align 4
  br label %162

157:                                              ; preds = %3
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @lprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EINVAL, align 4
  store i32 %160, i32* %4, align 4
  br label %162

161:                                              ; preds = %154, %133, %123
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %157, %155, %152, %144, %104, %80, %35
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @lpstop(%struct.lp_data*) #1

declare dso_local i32 @lpinit_locked(%struct.ifnet*) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @lprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
