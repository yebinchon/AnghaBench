; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_cmd_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_cmd_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32 }
%struct._cfg = type { i32 (%struct._qs*, %struct._cfg*, i32, i8**)*, i8*, i32, i64, i32* }

@.str = private unnamed_addr constant [34 x i8] c"program error - invalid arguments\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"apply %s to %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid arguments: need '%s' have '%s'\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"arguments %s not recognised\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._cfg*, i8*, %struct._qs*, %struct._cfg*)* @cmd_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_apply(%struct._cfg* %0, i8* %1, %struct._qs* %2, %struct._cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._cfg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._qs*, align 8
  %9 = alloca %struct._cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct._cfg, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct._cfg* %0, %struct._cfg** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct._qs* %2, %struct._qs** %8, align 8
  store %struct._cfg* %3, %struct._cfg** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %4
  store i32 1, i32* %5, align 4
  br label %96

24:                                               ; preds = %18
  %25 = load %struct._cfg*, %struct._cfg** %6, align 8
  %26 = icmp eq %struct._cfg* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load %struct._cfg*, %struct._cfg** %9, align 8
  %29 = icmp eq %struct._cfg* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %24
  %31 = call i32 (i8*, ...) @ED(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @exit(i32 1) #4
  unreachable

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = call i8** @split_arg(i8* %34, i32* %10)
  store i8** %35, i8*** %11, align 8
  %36 = load i8**, i8*** %11, align 8
  %37 = icmp eq i8** %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %96

39:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %88, %39
  %41 = load %struct._cfg*, %struct._cfg** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct._cfg, %struct._cfg* %41, i64 %43
  %45 = getelementptr inbounds %struct._cfg, %struct._cfg* %44, i32 0, i32 0
  %46 = load i32 (%struct._qs*, %struct._cfg*, i32, i8**)*, i32 (%struct._qs*, %struct._cfg*, i32, i8**)** %45, align 8
  %47 = icmp ne i32 (%struct._qs*, %struct._cfg*, i32, i8**)* %46, null
  br i1 %47, label %48, label %91

48:                                               ; preds = %40
  %49 = load %struct._cfg*, %struct._cfg** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct._cfg, %struct._cfg* %49, i64 %51
  %53 = bitcast %struct._cfg* %13 to i8*
  %54 = bitcast %struct._cfg* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 40, i1 false)
  %55 = getelementptr inbounds %struct._cfg, %struct._cfg* %13, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %14, align 8
  %57 = getelementptr inbounds %struct._cfg, %struct._cfg* %13, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct._cfg, %struct._cfg* %13, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct._cfg, %struct._cfg* %13, i32 0, i32 2
  %60 = call i32 @bzero(i32* %59, i32 4)
  %61 = load i8**, i8*** %11, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @ND(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %64)
  %66 = getelementptr inbounds %struct._cfg, %struct._cfg* %13, i32 0, i32 0
  %67 = load i32 (%struct._qs*, %struct._cfg*, i32, i8**)*, i32 (%struct._qs*, %struct._cfg*, i32, i8**)** %66, align 8
  %68 = load %struct._qs*, %struct._qs** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i8**, i8*** %11, align 8
  %71 = call i32 %67(%struct._qs* %68, %struct._cfg* %13, i32 %69, i8** %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %48
  br label %88

75:                                               ; preds = %48
  %76 = load i32, i32* %15, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i8*, i8** %14, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (i8*, ...) @ED(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %79, i8* %80)
  br label %91

82:                                               ; preds = %75
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds %struct._cfg, %struct._cfg* %13, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  %85 = load %struct._cfg*, %struct._cfg** %9, align 8
  %86 = bitcast %struct._cfg* %85 to i8*
  %87 = bitcast %struct._cfg* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 40, i1 false)
  store i32 0, i32* %5, align 4
  br label %96

88:                                               ; preds = %74
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %40

91:                                               ; preds = %78, %40
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 (i8*, ...) @ED(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  %94 = load i8**, i8*** %11, align 8
  %95 = call i32 @free(i8** %94)
  store i32 1, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %82, %38, %23
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @ED(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8** @split_arg(i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @ND(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
