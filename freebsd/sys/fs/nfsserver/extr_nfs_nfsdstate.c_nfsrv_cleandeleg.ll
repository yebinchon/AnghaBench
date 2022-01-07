; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_cleandeleg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_cleandeleg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfslockfile = type { i32 }
%struct.nfsclient = type { i32 }
%struct.nfsstate = type { %struct.nfsclient* }

@ls_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.nfslockfile*, %struct.nfsclient*, i32*, i32*)* @nfsrv_cleandeleg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_cleandeleg(i32 %0, %struct.nfslockfile* %1, %struct.nfsclient* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfslockfile*, align 8
  %8 = alloca %struct.nfsclient*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nfsstate*, align 8
  %12 = alloca %struct.nfsstate*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.nfslockfile* %1, %struct.nfslockfile** %7, align 8
  store %struct.nfsclient* %2, %struct.nfsclient** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.nfslockfile*, %struct.nfslockfile** %7, align 8
  %15 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %14, i32 0, i32 0
  %16 = call %struct.nfsstate* @LIST_FIRST(i32* %15)
  store %struct.nfsstate* %16, %struct.nfsstate** %11, align 8
  br label %17

17:                                               ; preds = %42, %5
  %18 = load %struct.nfsstate*, %struct.nfsstate** %11, align 8
  %19 = load %struct.nfslockfile*, %struct.nfslockfile** %7, align 8
  %20 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %19, i32 0, i32 0
  %21 = call %struct.nfsstate* @LIST_END(i32* %20)
  %22 = icmp ne %struct.nfsstate* %18, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.nfsstate*, %struct.nfsstate** %11, align 8
  %25 = load i32, i32* @ls_file, align 4
  %26 = call %struct.nfsstate* @LIST_NEXT(%struct.nfsstate* %24, i32 %25)
  store %struct.nfsstate* %26, %struct.nfsstate** %12, align 8
  %27 = load %struct.nfsstate*, %struct.nfsstate** %11, align 8
  %28 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %27, i32 0, i32 0
  %29 = load %struct.nfsclient*, %struct.nfsclient** %28, align 8
  %30 = load %struct.nfsclient*, %struct.nfsclient** %8, align 8
  %31 = icmp ne %struct.nfsclient* %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.nfsstate*, %struct.nfsstate** %11, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @nfsrv_delegconflict(%struct.nfsstate* %33, i32* %34, i32* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.nfsstate*, %struct.nfsstate** %12, align 8
  store %struct.nfsstate* %43, %struct.nfsstate** %11, align 8
  br label %17

44:                                               ; preds = %17
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @NFSEXITCODE(i32 %46)
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local %struct.nfsstate* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfsstate* @LIST_END(i32*) #1

declare dso_local %struct.nfsstate* @LIST_NEXT(%struct.nfsstate*, i32) #1

declare dso_local i32 @nfsrv_delegconflict(%struct.nfsstate*, i32*, i32*, i32) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
