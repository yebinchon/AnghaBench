; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32 }
%struct.mly_command_ioctl = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mly_command = type { i64, i64, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.mly_command_ioctl }
%struct.TYPE_5__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@MDACMD_IOCTL = common dso_local global i32 0, align 4
@MLY_TIMEOUT_SECONDS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MLY_CMD_DATAIN = common dso_local global i32 0, align 4
@MLY_CMD_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*, %struct.mly_command_ioctl*, i8**, i64, i32*, i8*, i64*)* @mly_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_ioctl(%struct.mly_softc* %0, %struct.mly_command_ioctl* %1, i8** %2, i64 %3, i32* %4, i8* %5, i64* %6) #0 {
  %8 = alloca %struct.mly_softc*, align 8
  %9 = alloca %struct.mly_command_ioctl*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.mly_command*, align 8
  %16 = alloca %struct.mly_command_ioctl*, align 8
  %17 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %8, align 8
  store %struct.mly_command_ioctl* %1, %struct.mly_command_ioctl** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64* %6, i64** %14, align 8
  %18 = call i32 @debug_called(i32 1)
  %19 = load %struct.mly_softc*, %struct.mly_softc** %8, align 8
  %20 = call i32 @MLY_ASSERT_LOCKED(%struct.mly_softc* %19)
  store %struct.mly_command* null, %struct.mly_command** %15, align 8
  %21 = load %struct.mly_softc*, %struct.mly_softc** %8, align 8
  %22 = call i64 @mly_alloc_command(%struct.mly_softc* %21, %struct.mly_command** %15)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %17, align 4
  br label %142

26:                                               ; preds = %7
  %27 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %28 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store %struct.mly_command_ioctl* %30, %struct.mly_command_ioctl** %16, align 8
  %31 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %16, align 8
  %32 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %9, align 8
  %35 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %16, align 8
  %37 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %9, align 8
  %40 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %16, align 8
  %42 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %9, align 8
  %43 = bitcast %struct.mly_command_ioctl* %41 to i8*
  %44 = bitcast %struct.mly_command_ioctl* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 20, i1 false)
  %45 = load i32, i32* @MDACMD_IOCTL, align 4
  %46 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %16, align 8
  %47 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %16, align 8
  %49 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 30, i32* %50, align 4
  %51 = load i32, i32* @MLY_TIMEOUT_SECONDS, align 4
  %52 = load %struct.mly_command_ioctl*, %struct.mly_command_ioctl** %16, align 8
  %53 = getelementptr inbounds %struct.mly_command_ioctl, %struct.mly_command_ioctl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i8**, i8*** %10, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %98

57:                                               ; preds = %26
  %58 = load i8**, i8*** %10, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = load i32, i32* @M_NOWAIT, align 4
  %65 = call i32* @malloc(i64 %62, i32 %63, i32 %64)
  %66 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %67 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = icmp eq i32* %65, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %17, align 4
  br label %142

71:                                               ; preds = %61
  %72 = load i32, i32* @MLY_CMD_DATAIN, align 4
  %73 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %74 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %88

77:                                               ; preds = %57
  %78 = load i8**, i8*** %10, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %82 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = load i32, i32* @MLY_CMD_DATAOUT, align 4
  %84 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %85 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %77, %71
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %91 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %94 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %93, i32 0, i32 3
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i64 %92, i64* %97, align 8
  br label %98

98:                                               ; preds = %88, %26
  %99 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %100 = call i32 @mly_immediate_command(%struct.mly_command* %99)
  store i32 %100, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %142

103:                                              ; preds = %98
  %104 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %105 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %12, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %109 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %103
  %113 = load i8*, i8** %13, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %128

115:                                              ; preds = %112
  %116 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %117 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %121 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @bcopy(%struct.TYPE_6__* %118, i8* %119, i64 %122)
  %124 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %125 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %14, align 8
  store i64 %126, i64* %127, align 8
  br label %142

128:                                              ; preds = %112, %103
  %129 = load i8**, i8*** %10, align 8
  %130 = icmp ne i8** %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i8**, i8*** %10, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %137 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = bitcast i32* %138 to i8*
  %140 = load i8**, i8*** %10, align 8
  store i8* %139, i8** %140, align 8
  br label %141

141:                                              ; preds = %135, %131, %128
  store i32 0, i32* %17, align 4
  br label %142

142:                                              ; preds = %141, %115, %102, %69, %24
  %143 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %144 = icmp ne %struct.mly_command* %143, null
  br i1 %144, label %145, label %166

145:                                              ; preds = %142
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %150 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load i8**, i8*** %10, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %159 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @M_DEVBUF, align 4
  %162 = call i32 @free(i32* %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %153, %148, %145
  %164 = load %struct.mly_command*, %struct.mly_command** %15, align 8
  %165 = call i32 @mly_release_command(%struct.mly_command* %164)
  br label %166

166:                                              ; preds = %163, %142
  %167 = load i32, i32* %17, align 4
  ret i32 %167
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_ASSERT_LOCKED(%struct.mly_softc*) #1

declare dso_local i64 @mly_alloc_command(%struct.mly_softc*, %struct.mly_command**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @mly_immediate_command(%struct.mly_command*) #1

declare dso_local i32 @bcopy(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mly_release_command(%struct.mly_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
