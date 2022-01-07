; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_load_fingerprints.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_load_fingerprints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fingerprint_list = type { i32 }
%struct.dirent = type { i32 }
%struct.fingerprint = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fingerprint_list* (i8*, i32*)* @load_fingerprints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fingerprint_list* @load_fingerprints(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.fingerprint_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca %struct.fingerprint*, align 8
  %9 = alloca %struct.fingerprint_list*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = call %struct.fingerprint_list* @calloc(i32 1, i32 4)
  store %struct.fingerprint_list* %11, %struct.fingerprint_list** %9, align 8
  %12 = load %struct.fingerprint_list*, %struct.fingerprint_list** %9, align 8
  %13 = icmp eq %struct.fingerprint_list* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.fingerprint_list* null, %struct.fingerprint_list** %3, align 8
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.fingerprint_list*, %struct.fingerprint_list** %9, align 8
  %17 = call i32 @STAILQ_INIT(%struct.fingerprint_list* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @opendir(i8* %18)
  store i32* %19, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.fingerprint_list*, %struct.fingerprint_list** %9, align 8
  %23 = call i32 @free(%struct.fingerprint_list* %22)
  store %struct.fingerprint_list* null, %struct.fingerprint_list** %3, align 8
  br label %63

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %58, %41, %24
  %26 = load i32*, i32** %6, align 8
  %27 = call %struct.dirent* @readdir(i32* %26)
  store %struct.dirent* %27, %struct.dirent** %7, align 8
  %28 = icmp ne %struct.dirent* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load %struct.dirent*, %struct.dirent** %7, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strcmp(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.dirent*, %struct.dirent** %7, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  br label %25

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.dirent*, %struct.dirent** %7, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.fingerprint* @load_fingerprint(i8* %43, i32 %46)
  store %struct.fingerprint* %47, %struct.fingerprint** %8, align 8
  %48 = load %struct.fingerprint*, %struct.fingerprint** %8, align 8
  %49 = icmp ne %struct.fingerprint* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.fingerprint_list*, %struct.fingerprint_list** %9, align 8
  %52 = load %struct.fingerprint*, %struct.fingerprint** %8, align 8
  %53 = load i32, i32* @next, align 4
  %54 = call i32 @STAILQ_INSERT_TAIL(%struct.fingerprint_list* %51, %struct.fingerprint* %52, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %42
  br label %25

59:                                               ; preds = %25
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @closedir(i32* %60)
  %62 = load %struct.fingerprint_list*, %struct.fingerprint_list** %9, align 8
  store %struct.fingerprint_list* %62, %struct.fingerprint_list** %3, align 8
  br label %63

63:                                               ; preds = %59, %21, %14
  %64 = load %struct.fingerprint_list*, %struct.fingerprint_list** %3, align 8
  ret %struct.fingerprint_list* %64
}

declare dso_local %struct.fingerprint_list* @calloc(i32, i32) #1

declare dso_local i32 @STAILQ_INIT(%struct.fingerprint_list*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @free(%struct.fingerprint_list*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.fingerprint* @load_fingerprint(i8*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.fingerprint_list*, %struct.fingerprint*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
