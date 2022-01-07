; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_mtree_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_mtree_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_fileinfo = type { i8*, i32 }

@mtree_fileinfo = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @mtree_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtree_print(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtree_fileinfo*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = call %struct.mtree_fileinfo* @SLIST_FIRST(i32* @mtree_fileinfo)
  store %struct.mtree_fileinfo* %11, %struct.mtree_fileinfo** %7, align 8
  %12 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %7, align 8
  %13 = icmp ne %struct.mtree_fileinfo* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %7, align 8
  %17 = getelementptr inbounds %struct.mtree_fileinfo, %struct.mtree_fileinfo* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %7, align 8
  %20 = getelementptr inbounds %struct.mtree_fileinfo, %struct.mtree_fileinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %21)
  br label %23

23:                                               ; preds = %14, %10
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @vfprintf(i32 %28, i8* %29, i32 %30)
  ret void
}

declare dso_local %struct.mtree_fileinfo* @SLIST_FIRST(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
