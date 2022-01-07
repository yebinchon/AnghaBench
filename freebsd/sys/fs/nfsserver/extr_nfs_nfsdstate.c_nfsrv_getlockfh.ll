; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_getlockfh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_getlockfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfslockfile = type { i32 }

@NFSLCK_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"nfsrv_getlockfh: new_lfp NULL\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"nfsrv_getlockfh\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.nfslockfile*, i32*, i32*)* @nfsrv_getlockfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_getlockfh(i32 %0, i32 %1, %struct.nfslockfile* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfslockfile*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.nfslockfile* %2, %struct.nfslockfile** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NFSLCK_OPEN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %19 = icmp ne %struct.nfslockfile* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.nfslockfile*, %struct.nfslockfile** %8, align 8
  %23 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %22, i32 0, i32 0
  store i32* %23, i32** %11, align 8
  br label %32

24:                                               ; preds = %5
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  store i32* %28, i32** %11, align 8
  br label %31

29:                                               ; preds = %24
  %30 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @nfsvno_getfh(i32 %33, i32* %34, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @NFSEXITCODE(i32 %37)
  %39 = load i32, i32* %12, align 4
  ret i32 %39
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @nfsvno_getfh(i32, i32*, i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
