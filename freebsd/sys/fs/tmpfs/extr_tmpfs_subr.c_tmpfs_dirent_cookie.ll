; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dirent_cookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dirent_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_dirent = type { i64 }

@TMPFS_DIRCOOKIE_EOF = common dso_local global i64 0, align 8
@TMPFS_DIRCOOKIE_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tmpfs_dirent*)* @tmpfs_dirent_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tmpfs_dirent_cookie(%struct.tmpfs_dirent* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.tmpfs_dirent* %0, %struct.tmpfs_dirent** %3, align 8
  %4 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %3, align 8
  %5 = icmp eq %struct.tmpfs_dirent* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i64, i64* @TMPFS_DIRCOOKIE_EOF, align 8
  store i64 %7, i64* %2, align 8
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %3, align 8
  %10 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TMPFS_DIRCOOKIE_MIN, align 8
  %13 = icmp sge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @MPASS(i32 %14)
  %16 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %3, align 8
  %17 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %8, %6
  %20 = load i64, i64* %2, align 8
  ret i64 %20
}

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
