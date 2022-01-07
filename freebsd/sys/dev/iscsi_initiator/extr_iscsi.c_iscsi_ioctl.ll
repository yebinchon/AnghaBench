; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_iscsi_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_iscsi.c_iscsi_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.TYPE_7__*, %struct.isc_softc* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.isc_softc = type { i32 }
%struct.thread = type { %struct.TYPE_6__* }

@max_sessions = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dev=%d cmd=%d\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"control process id\00", align 1
@_SIG_MAXSIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @iscsi_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.isc_softc*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %18 = call i32 @debug_called(i32 8)
  store i32 0, i32* %15, align 4
  %19 = load %struct.cdev*, %struct.cdev** %7, align 8
  %20 = call i64 @dev2unit(%struct.cdev* %19)
  %21 = load i64, i64* @max_sessions, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %5
  %24 = load %struct.cdev*, %struct.cdev** %7, align 8
  %25 = getelementptr inbounds %struct.cdev, %struct.cdev* %24, i32 0, i32 1
  %26 = load %struct.isc_softc*, %struct.isc_softc** %25, align 8
  store %struct.isc_softc* %26, %struct.isc_softc** %12, align 8
  %27 = load %struct.isc_softc*, %struct.isc_softc** %12, align 8
  %28 = icmp eq %struct.isc_softc* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %6, align 4
  br label %163

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %42 [
    i32 132, label %33
  ]

33:                                               ; preds = %31
  %34 = load %struct.cdev*, %struct.cdev** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @i_create_session(%struct.cdev* %34, i32* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %44

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %31, %41
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %6, align 4
  br label %163

46:                                               ; preds = %5
  %47 = load %struct.cdev*, %struct.cdev** %7, align 8
  %48 = getelementptr inbounds %struct.cdev, %struct.cdev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %13, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %6, align 4
  br label %163

54:                                               ; preds = %46
  %55 = load %struct.cdev*, %struct.cdev** %7, align 8
  %56 = call i64 @dev2unit(%struct.cdev* %55)
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @sdebug(i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %58)
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %159 [
    i32 131, label %61
    i32 133, label %68
    i32 134, label %74
    i32 136, label %79
    i32 137, label %84
    i32 129, label %87
    i32 135, label %121
    i32 128, label %133
    i32 130, label %136
    i32 138, label %153
  ]

61:                                               ; preds = %54
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %63 = load i64, i64* %9, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.thread*, %struct.thread** %11, align 8
  %67 = call i32 @i_setsoc(%struct.TYPE_7__* %62, i32 %65, %struct.thread* %66)
  store i32 %67, i32* %15, align 4
  br label %161

68:                                               ; preds = %54
  %69 = load i64, i64* %9, align 8
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %14, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @i_setopt(%struct.TYPE_7__* %71, i32* %72)
  store i32 %73, i32* %15, align 4
  br label %161

74:                                               ; preds = %54
  %75 = load %struct.cdev*, %struct.cdev** %7, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.thread*, %struct.thread** %11, align 8
  %78 = call i32 @i_send(%struct.cdev* %75, i64 %76, %struct.thread* %77)
  store i32 %78, i32* %15, align 4
  br label %161

79:                                               ; preds = %54
  %80 = load %struct.cdev*, %struct.cdev** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.thread*, %struct.thread** %11, align 8
  %83 = call i32 @i_recv(%struct.cdev* %80, i64 %81, %struct.thread* %82)
  store i32 %83, i32* %15, align 4
  br label %161

84:                                               ; preds = %54
  %85 = load %struct.cdev*, %struct.cdev** %7, align 8
  %86 = call i32 @i_ping(%struct.cdev* %85)
  store i32 %86, i32* %15, align 4
  br label %161

87:                                               ; preds = %54
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @ENOTCONN, align 4
  br label %97

94:                                               ; preds = %87
  %95 = load %struct.cdev*, %struct.cdev** %7, align 8
  %96 = call i32 @i_fullfeature(%struct.cdev* %95, i32 1)
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi i32 [ %93, %92 ], [ %96, %94 ]
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load %struct.thread*, %struct.thread** %11, align 8
  %103 = getelementptr inbounds %struct.thread, %struct.thread* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @SYSCTL_CHILDREN(i32 %111)
  %113 = load i32, i32* @OID_AUTO, align 4
  %114 = load i32, i32* @CTLFLAG_RD, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i32 @SYSCTL_ADD_INT(i32* %108, i32 %112, i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32* %118, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %101, %97
  br label %161

121:                                              ; preds = %54
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @ENOTCONN, align 4
  br label %131

128:                                              ; preds = %121
  %129 = load %struct.cdev*, %struct.cdev** %7, align 8
  %130 = call i32 @i_fullfeature(%struct.cdev* %129, i32 2)
  br label %131

131:                                              ; preds = %128, %126
  %132 = phi i32 [ %127, %126 ], [ %130, %128 ]
  store i32 %132, i32* %15, align 4
  br label %161

133:                                              ; preds = %54
  %134 = load %struct.cdev*, %struct.cdev** %7, align 8
  %135 = call i32 @i_fullfeature(%struct.cdev* %134, i32 0)
  store i32 %135, i32* %15, align 4
  br label %161

136:                                              ; preds = %54
  %137 = load i64, i64* %9, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @_SIG_MAXSIG, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142, %136
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* %15, align 4
  br label %152

148:                                              ; preds = %142
  %149 = load i32, i32* %16, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %152

152:                                              ; preds = %148, %146
  br label %161

153:                                              ; preds = %54
  %154 = load i64, i64* %9, align 8
  %155 = inttoptr i64 %154 to i32*
  store i32* %155, i32** %17, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = call i32 @ic_getCamVals(%struct.TYPE_7__* %156, i32* %157)
  store i32 %158, i32* %15, align 4
  br label %161

159:                                              ; preds = %54
  %160 = load i32, i32* @ENOIOCTL, align 4
  store i32 %160, i32* %15, align 4
  br label %161

161:                                              ; preds = %159, %153, %152, %133, %131, %120, %84, %79, %74, %68, %61
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %161, %52, %44, %29
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @i_create_session(%struct.cdev*, i32*) #1

declare dso_local i32 @sdebug(i32, i8*, i64, i32) #1

declare dso_local i32 @i_setsoc(%struct.TYPE_7__*, i32, %struct.thread*) #1

declare dso_local i32 @i_setopt(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @i_send(%struct.cdev*, i64, %struct.thread*) #1

declare dso_local i32 @i_recv(%struct.cdev*, i64, %struct.thread*) #1

declare dso_local i32 @i_ping(%struct.cdev*) #1

declare dso_local i32 @i_fullfeature(%struct.cdev*, i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @ic_getCamVals(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
