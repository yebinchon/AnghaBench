; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_dir.c_devfs_dir_unref_de.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_dir.c_devfs_dir_unref_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i32 }
%struct.devfs_dirent = type { i32 }

@SPECNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"devfs_unref_dir_de: NULL namep\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfs_dir_unref_de(%struct.devfs_mount* %0, %struct.devfs_dirent* %1) #0 {
  %3 = alloca %struct.devfs_mount*, align 8
  %4 = alloca %struct.devfs_dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.devfs_mount* %0, %struct.devfs_mount** %3, align 8
  store %struct.devfs_dirent* %1, %struct.devfs_dirent** %4, align 8
  %8 = load i32, i32* @SPECNAMELEN, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %14 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %15 = call i8* @devfs_fqpn(i8* %12, %struct.devfs_mount* %13, %struct.devfs_dirent* %14, i32* null)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @devfs_dir_unref(i8* %20)
  %22 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %22)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @devfs_fqpn(i8*, %struct.devfs_mount*, %struct.devfs_dirent*, i32*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @devfs_dir_unref(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
