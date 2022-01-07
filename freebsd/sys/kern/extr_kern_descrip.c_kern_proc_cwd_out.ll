; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_proc_cwd_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_proc_cwd_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.sbuf = type { i32 }
%struct.filedesc = type { i32* }
%struct.export_fd_buf = type { i32, %struct.sbuf*, %struct.filedesc* }

@MA_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@KF_FD_TYPE_CWD = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_proc_cwd_out(%struct.proc* %0, %struct.sbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca %struct.export_fd_buf*, align 8
  %10 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.sbuf* %1, %struct.sbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.proc*, %struct.proc** %5, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %11, i32 %12)
  %14 = load %struct.proc*, %struct.proc** %5, align 8
  %15 = call %struct.filedesc* @fdhold(%struct.proc* %14)
  store %struct.filedesc* %15, %struct.filedesc** %8, align 8
  %16 = load %struct.proc*, %struct.proc** %5, align 8
  %17 = call i32 @PROC_UNLOCK(%struct.proc* %16)
  %18 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %19 = icmp eq %struct.filedesc* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %3
  %23 = load i32, i32* @M_TEMP, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = call %struct.export_fd_buf* @malloc(i32 24, i32 %23, i32 %24)
  store %struct.export_fd_buf* %25, %struct.export_fd_buf** %9, align 8
  %26 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %27 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %28 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %27, i32 0, i32 2
  store %struct.filedesc* %26, %struct.filedesc** %28, align 8
  %29 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %30 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %31 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %30, i32 0, i32 1
  store %struct.sbuf* %29, %struct.sbuf** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %34 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %36 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %35)
  %37 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %38 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %10, align 4
  br label %55

43:                                               ; preds = %22
  %44 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %45 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @vrefact(i32* %46)
  %48 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %49 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @KF_FD_TYPE_CWD, align 4
  %52 = load i32, i32* @FREAD, align 4
  %53 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %54 = call i32 @export_vnode_to_sb(i32* %50, i32 %51, i32 %52, %struct.export_fd_buf* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %43, %41
  %56 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %57 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %56)
  %58 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %59 = call i32 @fddrop(%struct.filedesc* %58)
  %60 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %61 = load i32, i32* @M_TEMP, align 4
  %62 = call i32 @free(%struct.export_fd_buf* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %55, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local %struct.filedesc* @fdhold(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.export_fd_buf* @malloc(i32, i32, i32) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local i32 @vrefact(i32*) #1

declare dso_local i32 @export_vnode_to_sb(i32*, i32, i32, %struct.export_fd_buf*) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @fddrop(%struct.filedesc*) #1

declare dso_local i32 @free(%struct.export_fd_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
