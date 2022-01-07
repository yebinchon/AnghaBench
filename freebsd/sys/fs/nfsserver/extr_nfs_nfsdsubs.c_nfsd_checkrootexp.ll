; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdsubs.c_nfsd_checkrootexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdsubs.c_nfsd_checkrootexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32 }

@ND_GSS = common dso_local global i32 0, align 4
@ND_EXAUTHSYS = common dso_local global i32 0, align 4
@ND_GSSINTEGRITY = common dso_local global i32 0, align 4
@ND_EXGSSINTEGRITY = common dso_local global i32 0, align 4
@ND_GSSPRIVACY = common dso_local global i32 0, align 4
@ND_EXGSSPRIVACY = common dso_local global i32 0, align 4
@ND_EXGSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_checkrootexp(%struct.nfsrv_descript* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsrv_descript*, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %3, align 8
  %4 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %3, align 8
  %5 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ND_GSS, align 4
  %8 = load i32, i32* @ND_EXAUTHSYS, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @ND_EXAUTHSYS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %3, align 8
  %16 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ND_GSSINTEGRITY, align 4
  %19 = load i32, i32* @ND_EXGSSINTEGRITY, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @ND_GSSINTEGRITY, align 4
  %23 = load i32, i32* @ND_EXGSSINTEGRITY, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %58

27:                                               ; preds = %14
  %28 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %3, align 8
  %29 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ND_GSSPRIVACY, align 4
  %32 = load i32, i32* @ND_EXGSSPRIVACY, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load i32, i32* @ND_GSSPRIVACY, align 4
  %36 = load i32, i32* @ND_EXGSSPRIVACY, align 4
  %37 = or i32 %35, %36
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %58

40:                                               ; preds = %27
  %41 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %3, align 8
  %42 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ND_GSS, align 4
  %45 = load i32, i32* @ND_GSSINTEGRITY, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ND_GSSPRIVACY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ND_EXGSS, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %43, %50
  %52 = load i32, i32* @ND_GSS, align 4
  %53 = load i32, i32* @ND_EXGSS, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %58

57:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56, %39, %26, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
