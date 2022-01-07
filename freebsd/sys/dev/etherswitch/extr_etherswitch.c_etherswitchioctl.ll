; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_etherswitch.c_etherswitchioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_etherswitch.c_etherswitchioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.etherswitch_softc* }
%struct.etherswitch_softc = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @etherswitchioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etherswitchioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.etherswitch_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %20 = load %struct.cdev*, %struct.cdev** %6, align 8
  %21 = getelementptr inbounds %struct.cdev, %struct.cdev* %20, i32 0, i32 0
  %22 = load %struct.etherswitch_softc*, %struct.etherswitch_softc** %21, align 8
  store %struct.etherswitch_softc* %22, %struct.etherswitch_softc** %11, align 8
  %23 = load %struct.etherswitch_softc*, %struct.etherswitch_softc** %11, align 8
  %24 = getelementptr inbounds %struct.etherswitch_softc, %struct.etherswitch_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @device_get_parent(i32 %26)
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %143 [
    i32 139, label %29
    i32 136, label %35
    i32 129, label %49
    i32 137, label %64
    i32 130, label %69
    i32 133, label %74
    i32 128, label %79
    i32 138, label %84
    i32 131, label %97
    i32 140, label %111
    i32 132, label %117
    i32 142, label %122
    i32 141, label %125
    i32 135, label %133
    i32 134, label %138
  ]

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  %31 = call i32* @ETHERSWITCH_GETINFO(i32 %30)
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @bcopy(i32* %32, i64 %33, i32 4)
  br label %145

35:                                               ; preds = %5
  %36 = load i64, i64* %8, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %16, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @ETHERSWITCH_LOCK(i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ETHERSWITCH_READREG(i32 %40, i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @ETHERSWITCH_UNLOCK(i32 %47)
  br label %145

49:                                               ; preds = %5
  %50 = load i64, i64* %8, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %16, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @ETHERSWITCH_LOCK(i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ETHERSWITCH_WRITEREG(i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ETHERSWITCH_UNLOCK(i32 %62)
  br label %145

64:                                               ; preds = %5
  %65 = load i32, i32* %13, align 4
  %66 = load i64, i64* %8, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ETHERSWITCH_GETPORT(i32 %65, i32* %67)
  store i32 %68, i32* %19, align 4
  br label %145

69:                                               ; preds = %5
  %70 = load i32, i32* %13, align 4
  %71 = load i64, i64* %8, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = call i32 @ETHERSWITCH_SETPORT(i32 %70, i32* %72)
  store i32 %73, i32* %19, align 4
  br label %145

74:                                               ; preds = %5
  %75 = load i32, i32* %13, align 4
  %76 = load i64, i64* %8, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @ETHERSWITCH_GETVGROUP(i32 %75, i32* %77)
  store i32 %78, i32* %19, align 4
  br label %145

79:                                               ; preds = %5
  %80 = load i32, i32* %13, align 4
  %81 = load i64, i64* %8, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = call i32 @ETHERSWITCH_SETVGROUP(i32 %80, i32* %82)
  store i32 %83, i32* %19, align 4
  br label %145

84:                                               ; preds = %5
  %85 = load i64, i64* %8, align 8
  %86 = inttoptr i64 %85 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %17, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ETHERSWITCH_READPHYREG(i32 %87, i32 %90, i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %145

97:                                               ; preds = %5
  %98 = load i64, i64* %8, align 8
  %99 = inttoptr i64 %98 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %17, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ETHERSWITCH_WRITEPHYREG(i32 %100, i32 %103, i32 %106, i32 %109)
  store i32 %110, i32* %19, align 4
  br label %145

111:                                              ; preds = %5
  %112 = call i32 @bzero(i32* %14, i32 4)
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @ETHERSWITCH_GETCONF(i32 %113, i32* %14)
  store i32 %114, i32* %19, align 4
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @bcopy(i32* %14, i64 %115, i32 4)
  br label %145

117:                                              ; preds = %5
  %118 = load i32, i32* %13, align 4
  %119 = load i64, i64* %8, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = call i32 @ETHERSWITCH_SETCONF(i32 %118, i32* %120)
  store i32 %121, i32* %19, align 4
  br label %145

122:                                              ; preds = %5
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @ETHERSWITCH_FLUSH_ALL(i32 %123)
  store i32 %124, i32* %19, align 4
  br label %145

125:                                              ; preds = %5
  %126 = load i64, i64* %8, align 8
  %127 = inttoptr i64 %126 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %127, %struct.TYPE_5__** %18, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ETHERSWITCH_FLUSH_PORT(i32 %128, i32 %131)
  store i32 %132, i32* %19, align 4
  br label %145

133:                                              ; preds = %5
  %134 = load i32, i32* %13, align 4
  %135 = load i64, i64* %8, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @ETHERSWITCH_FETCH_TABLE(i32 %134, i8* %136)
  store i32 %137, i32* %19, align 4
  br label %145

138:                                              ; preds = %5
  %139 = load i32, i32* %13, align 4
  %140 = load i64, i64* %8, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @ETHERSWITCH_FETCH_TABLE_ENTRY(i32 %139, i8* %141)
  store i32 %142, i32* %19, align 4
  br label %145

143:                                              ; preds = %5
  %144 = load i32, i32* @ENOTTY, align 4
  store i32 %144, i32* %19, align 4
  br label %145

145:                                              ; preds = %143, %138, %133, %125, %122, %117, %111, %97, %84, %79, %74, %69, %64, %49, %35, %29
  %146 = load i32, i32* %19, align 4
  ret i32 %146
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @ETHERSWITCH_GETINFO(i32) #1

declare dso_local i32 @bcopy(i32*, i64, i32) #1

declare dso_local i32 @ETHERSWITCH_LOCK(i32) #1

declare dso_local i32 @ETHERSWITCH_READREG(i32, i32) #1

declare dso_local i32 @ETHERSWITCH_UNLOCK(i32) #1

declare dso_local i32 @ETHERSWITCH_WRITEREG(i32, i32, i32) #1

declare dso_local i32 @ETHERSWITCH_GETPORT(i32, i32*) #1

declare dso_local i32 @ETHERSWITCH_SETPORT(i32, i32*) #1

declare dso_local i32 @ETHERSWITCH_GETVGROUP(i32, i32*) #1

declare dso_local i32 @ETHERSWITCH_SETVGROUP(i32, i32*) #1

declare dso_local i32 @ETHERSWITCH_READPHYREG(i32, i32, i32) #1

declare dso_local i32 @ETHERSWITCH_WRITEPHYREG(i32, i32, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @ETHERSWITCH_GETCONF(i32, i32*) #1

declare dso_local i32 @ETHERSWITCH_SETCONF(i32, i32*) #1

declare dso_local i32 @ETHERSWITCH_FLUSH_ALL(i32) #1

declare dso_local i32 @ETHERSWITCH_FLUSH_PORT(i32, i32) #1

declare dso_local i32 @ETHERSWITCH_FETCH_TABLE(i32, i8*) #1

declare dso_local i32 @ETHERSWITCH_FETCH_TABLE_ENTRY(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
