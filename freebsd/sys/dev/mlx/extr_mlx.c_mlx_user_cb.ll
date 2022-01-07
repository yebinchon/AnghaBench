; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_user_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_user_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_usercommand = type { i32, i64 }
%struct.mlx_command = type { i32*, i32, i64, i64 }
%struct.mlx_dcdb = type { i32 }

@MLX_CMD_DIRECT_CDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"command fixup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx_user_cb(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx_usercommand*, align 8
  %10 = alloca %struct.mlx_command*, align 8
  %11 = alloca %struct.mlx_dcdb*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mlx_command*
  store %struct.mlx_command* %13, %struct.mlx_command** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %115

17:                                               ; preds = %4
  %18 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @mlx_setup_dmamap(%struct.mlx_command* %18, i32* %19, i32 %20, i32 %21)
  %23 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %24 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.mlx_usercommand*
  store %struct.mlx_usercommand* %26, %struct.mlx_usercommand** %9, align 8
  store %struct.mlx_dcdb* null, %struct.mlx_dcdb** %11, align 8
  %27 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %28 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MLX_CMD_DIRECT_CDB, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %17
  %35 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %36 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.mlx_dcdb*
  store %struct.mlx_dcdb* %38, %struct.mlx_dcdb** %11, align 8
  %39 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %40 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load %struct.mlx_dcdb*, %struct.mlx_dcdb** %11, align 8
  %46 = getelementptr inbounds %struct.mlx_dcdb, %struct.mlx_dcdb* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %9, align 8
  %48 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %47, i32 0, i32 0
  store i32 8, i32* %48, align 8
  br label %49

49:                                               ; preds = %34, %17
  %50 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %9, align 8
  %51 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %49
  %55 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %56 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  %59 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %60 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %9, align 8
  %63 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %58, i32* %66, align 4
  %67 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %68 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %73 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %9, align 8
  %76 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  store i32 %71, i32* %80, align 4
  %81 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %82 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %87 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %9, align 8
  %90 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  store i32 %85, i32* %94, align 4
  %95 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %96 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = ashr i32 %97, 24
  %99 = and i32 %98, 255
  %100 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %101 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.mlx_usercommand*, %struct.mlx_usercommand** %9, align 8
  %104 = getelementptr inbounds %struct.mlx_usercommand, %struct.mlx_usercommand* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  store i32 %99, i32* %108, align 4
  br label %109

109:                                              ; preds = %54, %49
  %110 = call i32 @debug(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %112 = call i64 @mlx_wait_command(%struct.mlx_command* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %16, %114, %109
  ret void
}

declare dso_local i32 @mlx_setup_dmamap(%struct.mlx_command*, i32*, i32, i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i64 @mlx_wait_command(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
