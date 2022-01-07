; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_user_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_user_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }
%struct.mlx_usercommand = type { i32, i32, i32, i32, i32 }
%struct.mlx_command = type { i32, i32, i8*, i32, %struct.mlx_usercommand*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"got command buffer\00", align 1
@MLX_MAXPHYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"got kernel buffer\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"got a slot\00", align 1
@mlx_user_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*, %struct.mlx_usercommand*)* @mlx_user_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_user_command(%struct.mlx_softc* %0, %struct.mlx_usercommand* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca %struct.mlx_usercommand*, align 8
  %6 = alloca %struct.mlx_command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %4, align 8
  store %struct.mlx_usercommand* %1, %struct.mlx_usercommand** %5, align 8
  %9 = call i32 @debug_called(i32 0)
  store i8* null, i8** %7, align 8
  store %struct.mlx_command* null, %struct.mlx_command** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %12 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %11)
  %13 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %14 = call %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %13)
  store %struct.mlx_command* %14, %struct.mlx_command** %6, align 8
  %15 = icmp eq %struct.mlx_command* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %18 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %17)
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %161

20:                                               ; preds = %2
  %21 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %22 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %25 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bcopy(i32 %23, i32 %26, i32 4)
  %28 = call i32 @debug(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %30 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %20
  %34 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %35 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MLX_MAXPHYS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %8, align 4
  br label %148

41:                                               ; preds = %33
  %42 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %43 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %42)
  %44 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %45 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = call i8* @malloc(i32 %46, i32 %47, i32 %48)
  store i8* %49, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %41
  %52 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %53 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %57 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @copyin(i32 %54, i8* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51, %41
  %62 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %63 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %62)
  br label %148

64:                                               ; preds = %51
  %65 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %66 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %65)
  %67 = call i32 @debug(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %20
  %69 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %70 = call i64 @mlx_getslot(%struct.mlx_command* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %148

73:                                               ; preds = %68
  %74 = call i32 @debug(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %76 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %81 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %86 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84, %79
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %8, align 4
  br label %148

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %73
  %94 = load i8*, i8** %7, align 8
  %95 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %96 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %98 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %101 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %103 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %104 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %103, i32 0, i32 4
  store %struct.mlx_usercommand* %102, %struct.mlx_usercommand** %104, align 8
  %105 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %106 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %109 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %112 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %115 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @mlx_user_cb, align 4
  %118 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %119 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %120 = call i32 @bus_dmamap_load(i32 %107, i32 %110, i8* %113, i32 %116, i32 %117, %struct.mlx_command* %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %93
  br label %148

124:                                              ; preds = %93
  %125 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %126 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %129 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %131 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %124
  %135 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %136 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %135)
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %139 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %5, align 8
  %142 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @copyout(i8* %137, i32 %140, i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %146 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %145)
  br label %147

147:                                              ; preds = %134, %124
  br label %148

148:                                              ; preds = %147, %123, %90, %72, %61, %39
  %149 = load %struct.mlx_command*, %struct.mlx_command** %6, align 8
  %150 = call i32 @mlx_releasecmd(%struct.mlx_command* %149)
  %151 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %152 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %151)
  %153 = load i8*, i8** %7, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* @M_DEVBUF, align 4
  %158 = call i32 @free(i8* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %148
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %16
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i64 @mlx_getslot(%struct.mlx_command*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.mlx_command*, i32) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
