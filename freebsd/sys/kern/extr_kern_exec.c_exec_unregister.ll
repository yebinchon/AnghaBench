; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execsw = type { i32 }

@execsw = common dso_local global %struct.execsw** null, align 8
@.str = private unnamed_addr constant [35 x i8] c"unregister with no handlers left?\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_unregister(%struct.execsw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.execsw*, align 8
  %4 = alloca %struct.execsw**, align 8
  %5 = alloca %struct.execsw**, align 8
  %6 = alloca %struct.execsw**, align 8
  %7 = alloca i32, align 4
  store %struct.execsw* %0, %struct.execsw** %3, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  %9 = icmp eq %struct.execsw** %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  store %struct.execsw** %13, %struct.execsw*** %4, align 8
  br label %14

14:                                               ; preds = %25, %12
  %15 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %16 = load %struct.execsw*, %struct.execsw** %15, align 8
  %17 = icmp ne %struct.execsw* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %20 = load %struct.execsw*, %struct.execsw** %19, align 8
  %21 = load %struct.execsw*, %struct.execsw** %3, align 8
  %22 = icmp eq %struct.execsw* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %27 = getelementptr inbounds %struct.execsw*, %struct.execsw** %26, i32 1
  store %struct.execsw** %27, %struct.execsw*** %4, align 8
  br label %14

28:                                               ; preds = %23, %14
  %29 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %30 = load %struct.execsw*, %struct.execsw** %29, align 8
  %31 = icmp eq %struct.execsw* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %2, align 4
  br label %90

34:                                               ; preds = %28
  %35 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  store %struct.execsw** %35, %struct.execsw*** %4, align 8
  br label %36

36:                                               ; preds = %49, %34
  %37 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %38 = load %struct.execsw*, %struct.execsw** %37, align 8
  %39 = icmp ne %struct.execsw* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %42 = load %struct.execsw*, %struct.execsw** %41, align 8
  %43 = load %struct.execsw*, %struct.execsw** %3, align 8
  %44 = icmp ne %struct.execsw* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %51 = getelementptr inbounds %struct.execsw*, %struct.execsw** %50, i32 1
  store %struct.execsw** %51, %struct.execsw*** %4, align 8
  br label %36

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @M_TEMP, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = call %struct.execsw** @malloc(i32 %56, i32 %57, i32 %58)
  store %struct.execsw** %59, %struct.execsw*** %6, align 8
  %60 = load %struct.execsw**, %struct.execsw*** %6, align 8
  store %struct.execsw** %60, %struct.execsw*** %5, align 8
  %61 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  store %struct.execsw** %61, %struct.execsw*** %4, align 8
  br label %62

62:                                               ; preds = %77, %52
  %63 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %64 = load %struct.execsw*, %struct.execsw** %63, align 8
  %65 = icmp ne %struct.execsw* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %68 = load %struct.execsw*, %struct.execsw** %67, align 8
  %69 = load %struct.execsw*, %struct.execsw** %3, align 8
  %70 = icmp ne %struct.execsw* %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %73 = load %struct.execsw*, %struct.execsw** %72, align 8
  %74 = load %struct.execsw**, %struct.execsw*** %5, align 8
  %75 = getelementptr inbounds %struct.execsw*, %struct.execsw** %74, i32 1
  store %struct.execsw** %75, %struct.execsw*** %5, align 8
  store %struct.execsw* %73, %struct.execsw** %74, align 8
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %79 = getelementptr inbounds %struct.execsw*, %struct.execsw** %78, i32 1
  store %struct.execsw** %79, %struct.execsw*** %4, align 8
  br label %62

80:                                               ; preds = %62
  %81 = load %struct.execsw**, %struct.execsw*** %5, align 8
  store %struct.execsw* null, %struct.execsw** %81, align 8
  %82 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  %83 = icmp ne %struct.execsw** %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  %86 = load i32, i32* @M_TEMP, align 4
  %87 = call i32 @free(%struct.execsw** %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %80
  %89 = load %struct.execsw**, %struct.execsw*** %6, align 8
  store %struct.execsw** %89, %struct.execsw*** @execsw, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %32
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.execsw** @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.execsw**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
