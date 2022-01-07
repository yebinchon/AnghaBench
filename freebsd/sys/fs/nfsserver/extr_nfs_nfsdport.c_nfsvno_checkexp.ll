; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_checkexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_checkexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.sockaddr = type { i32 }
%struct.nfsexstuff = type { i32, i32*, i64 }
%struct.ucred = type { i32 }

@nfs_rootfhset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_checkexp(%struct.mount* %0, %struct.sockaddr* %1, %struct.nfsexstuff* %2, %struct.ucred** %3) #0 {
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.nfsexstuff*, align 8
  %8 = alloca %struct.ucred**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.nfsexstuff* %2, %struct.nfsexstuff** %7, align 8
  store %struct.ucred** %3, %struct.ucred*** %8, align 8
  %12 = load %struct.mount*, %struct.mount** %5, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = load %struct.nfsexstuff*, %struct.nfsexstuff** %7, align 8
  %15 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %14, i32 0, i32 2
  %16 = load %struct.ucred**, %struct.ucred*** %8, align 8
  %17 = load %struct.nfsexstuff*, %struct.nfsexstuff** %7, align 8
  %18 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %17, i32 0, i32 0
  %19 = call i32 @VFS_CHECKEXP(%struct.mount* %12, %struct.sockaddr* %13, i64* %15, %struct.ucred** %16, i32* %18, i32** %11)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load i64, i64* @nfs_rootfhset, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.nfsexstuff*, %struct.nfsexstuff** %7, align 8
  %27 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.nfsexstuff*, %struct.nfsexstuff** %7, align 8
  %29 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %25, %22
  br label %54

31:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.nfsexstuff*, %struct.nfsexstuff** %7, align 8
  %35 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfsexstuff*, %struct.nfsexstuff** %7, align 8
  %45 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %32

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @NFSEXITCODE(i32 %55)
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local i32 @VFS_CHECKEXP(%struct.mount*, %struct.sockaddr*, i64*, %struct.ucred**, i32*, i32**) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
