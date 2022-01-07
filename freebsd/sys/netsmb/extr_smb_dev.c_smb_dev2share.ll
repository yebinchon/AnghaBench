; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_dev.c_smb_dev2share.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_dev.c_smb_dev2share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.file* }
%struct.file = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_share = type { i32 }
%struct.smb_dev = type { i32, %struct.smb_share* }

@curthread = common dso_local global %struct.thread* null, align 8
@cap_read_rights = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_dev2share(i32 %0, i32 %1, %struct.smb_cred* %2, %struct.smb_share** %3, %struct.smb_dev** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smb_cred*, align 8
  %10 = alloca %struct.smb_share**, align 8
  %11 = alloca %struct.smb_dev**, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.file*, align 8
  %14 = alloca %struct.smb_dev*, align 8
  %15 = alloca %struct.smb_share*, align 8
  %16 = alloca %struct.thread*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.smb_cred* %2, %struct.smb_cred** %9, align 8
  store %struct.smb_share** %3, %struct.smb_share*** %10, align 8
  store %struct.smb_dev** %4, %struct.smb_dev*** %11, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %16, align 8
  %19 = load %struct.thread*, %struct.thread** %16, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @fget(%struct.thread* %19, i32 %20, i32* @cap_read_rights, %struct.file** %12)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %17, align 4
  store i32 %25, i32* %6, align 4
  br label %76

26:                                               ; preds = %5
  %27 = load %struct.thread*, %struct.thread** %16, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.file*, %struct.file** %28, align 8
  store %struct.file* %29, %struct.file** %13, align 8
  %30 = load %struct.file*, %struct.file** %12, align 8
  %31 = load %struct.thread*, %struct.thread** %16, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  store %struct.file* %30, %struct.file** %32, align 8
  %33 = bitcast %struct.smb_dev** %14 to i8**
  %34 = call i32 @devfs_get_cdevpriv(i8** %33)
  store i32 %34, i32* %17, align 4
  %35 = load %struct.file*, %struct.file** %13, align 8
  %36 = load %struct.thread*, %struct.thread** %16, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  store %struct.file* %35, %struct.file** %37, align 8
  %38 = load %struct.file*, %struct.file** %12, align 8
  %39 = load %struct.thread*, %struct.thread** %16, align 8
  %40 = call i32 @fdrop(%struct.file* %38, %struct.thread* %39)
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %26
  %44 = load %struct.smb_dev*, %struct.smb_dev** %14, align 8
  %45 = icmp eq %struct.smb_dev* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %26
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %6, align 4
  br label %76

48:                                               ; preds = %43
  %49 = call i32 (...) @SMB_LOCK()
  %50 = load %struct.smb_dev*, %struct.smb_dev** %14, align 8
  %51 = load %struct.smb_dev**, %struct.smb_dev*** %11, align 8
  store %struct.smb_dev* %50, %struct.smb_dev** %51, align 8
  %52 = load %struct.smb_dev*, %struct.smb_dev** %14, align 8
  %53 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %52, i32 0, i32 1
  %54 = load %struct.smb_share*, %struct.smb_share** %53, align 8
  store %struct.smb_share* %54, %struct.smb_share** %15, align 8
  %55 = load %struct.smb_share*, %struct.smb_share** %15, align 8
  %56 = icmp eq %struct.smb_share* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = call i32 (...) @SMB_UNLOCK()
  %59 = load i32, i32* @ENOTCONN, align 4
  store i32 %59, i32* %6, align 4
  br label %76

60:                                               ; preds = %48
  %61 = load %struct.smb_share*, %struct.smb_share** %15, align 8
  %62 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %63 = call i32 @smb_share_get(%struct.smb_share* %61, %struct.smb_cred* %62)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.smb_dev*, %struct.smb_dev** %14, align 8
  %68 = getelementptr inbounds %struct.smb_dev, %struct.smb_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.smb_share*, %struct.smb_share** %15, align 8
  %72 = load %struct.smb_share**, %struct.smb_share*** %10, align 8
  store %struct.smb_share* %71, %struct.smb_share** %72, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = call i32 (...) @SMB_UNLOCK()
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %57, %46, %24
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @SMB_LOCK(...) #1

declare dso_local i32 @SMB_UNLOCK(...) #1

declare dso_local i32 @smb_share_get(%struct.smb_share*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
