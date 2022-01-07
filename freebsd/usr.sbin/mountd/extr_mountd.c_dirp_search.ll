; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_dirp_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_dirp_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { %struct.dirlist*, %struct.dirlist*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dirlist* (%struct.dirlist*, i8*)* @dirp_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dirlist* @dirp_search(%struct.dirlist* %0, i8* %1) #0 {
  %3 = alloca %struct.dirlist*, align 8
  %4 = alloca %struct.dirlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dirlist* %0, %struct.dirlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %8 = icmp ne %struct.dirlist* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %11 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i32 %12, i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %19 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %18, i32 0, i32 1
  %20 = load %struct.dirlist*, %struct.dirlist** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.dirlist* @dirp_search(%struct.dirlist* %20, i8* %21)
  store %struct.dirlist* %22, %struct.dirlist** %3, align 8
  br label %36

23:                                               ; preds = %9
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %28 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %27, i32 0, i32 0
  %29 = load %struct.dirlist*, %struct.dirlist** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call %struct.dirlist* @dirp_search(%struct.dirlist* %29, i8* %30)
  store %struct.dirlist* %31, %struct.dirlist** %3, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  store %struct.dirlist* %33, %struct.dirlist** %3, align 8
  br label %36

34:                                               ; preds = %2
  %35 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  store %struct.dirlist* %35, %struct.dirlist** %3, align 8
  br label %36

36:                                               ; preds = %34, %32, %26, %17
  %37 = load %struct.dirlist*, %struct.dirlist** %3, align 8
  ret %struct.dirlist* %37
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
