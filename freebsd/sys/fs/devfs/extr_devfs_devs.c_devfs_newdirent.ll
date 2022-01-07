; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_newdirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_newdirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_dirent = type { i32, i32, i32, i32, i32, %struct.dirent* }
%struct.dirent = type { i32, i32, i32 }

@M_DEVFS3 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devfs_dirent* @devfs_newdirent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.devfs_dirent*, align 8
  %7 = alloca %struct.dirent, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = call i32 @GENERIC_DIRSIZ(%struct.dirent* %7)
  %11 = sext i32 %10 to i64
  %12 = add i64 32, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @M_DEVFS3, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.devfs_dirent* @malloc(i32 %14, i32 %15, i32 %18)
  store %struct.devfs_dirent* %19, %struct.devfs_dirent** %6, align 8
  %20 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %21 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %20, i64 1
  %22 = bitcast %struct.devfs_dirent* %21 to %struct.dirent*
  %23 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %24 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %23, i32 0, i32 5
  store %struct.dirent* %22, %struct.dirent** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %27 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %26, i32 0, i32 5
  %28 = load %struct.dirent*, %struct.dirent** %27, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = call i32 @GENERIC_DIRSIZ(%struct.dirent* %7)
  %31 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %32 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %31, i32 0, i32 5
  %33 = load %struct.dirent*, %struct.dirent** %32, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %37 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %36, i32 0, i32 5
  %38 = load %struct.dirent*, %struct.dirent** %37, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @bcopy(i8* %35, i32 %40, i32 %41)
  %43 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %44 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %43, i32 0, i32 5
  %45 = load %struct.dirent*, %struct.dirent** %44, align 8
  %46 = call i32 @dirent_terminate(%struct.dirent* %45)
  %47 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %48 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %47, i32 0, i32 2
  %49 = call i32 @vfs_timestamp(i32* %48)
  %50 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %51 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %54 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %56 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 8
  %57 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %58 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  %60 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.devfs_dirent*, %struct.devfs_dirent** %6, align 8
  ret %struct.devfs_dirent* %61
}

declare dso_local i32 @GENERIC_DIRSIZ(%struct.dirent*) #1

declare dso_local %struct.devfs_dirent* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @dirent_terminate(%struct.dirent*) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
