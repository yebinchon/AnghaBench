; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_newnfs_copyincred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_newnfs_copyincred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64, i32*, i32 }
%struct.nfscred = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"newnfs_copyincred: negative cr_ngroups\00", align 1
@NFS_MAXGRPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newnfs_copyincred(%struct.ucred* %0, %struct.nfscred* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.nfscred*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.nfscred* %1, %struct.nfscred** %4, align 8
  %6 = load %struct.ucred*, %struct.ucred** %3, align 8
  %7 = getelementptr inbounds %struct.ucred, %struct.ucred* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ucred*, %struct.ucred** %3, align 8
  %13 = getelementptr inbounds %struct.ucred, %struct.ucred* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nfscred*, %struct.nfscred** %4, align 8
  %16 = getelementptr inbounds %struct.nfscred, %struct.nfscred* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ucred*, %struct.ucred** %3, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NFS_MAXGRPS, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @MIN(i64 %19, i64 %21)
  %23 = load %struct.nfscred*, %struct.nfscred** %4, align 8
  %24 = getelementptr inbounds %struct.nfscred, %struct.nfscred* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %45, %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.nfscred*, %struct.nfscred** %4, align 8
  %28 = getelementptr inbounds %struct.nfscred, %struct.nfscred* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.ucred*, %struct.ucred** %3, align 8
  %33 = getelementptr inbounds %struct.ucred, %struct.ucred* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfscred*, %struct.nfscred** %4, align 8
  %40 = getelementptr inbounds %struct.nfscred, %struct.nfscred* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %25

48:                                               ; preds = %25
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
