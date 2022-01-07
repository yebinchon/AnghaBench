; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_getauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_getauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfssockreq = type { i32 }
%struct.ucred = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"kerberosv5\00", align 1
@rpc_gss_svc_none = common dso_local global i32 0, align 4
@rpc_gss_svc_integrity = common dso_local global i32 0, align 4
@rpc_gss_svc_privacy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.nfssockreq*, i32, i8*, i8*, i32, %struct.ucred*)* @nfs_getauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nfs_getauth(%struct.nfssockreq* %0, i32 %1, i8* %2, i8* %3, i32 %4, %struct.ucred* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfssockreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ucred*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.nfssockreq* %0, %struct.nfssockreq** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ucred* %5, %struct.ucred** %13, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %67 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
    i32 131, label %66
  ]

17:                                               ; preds = %6, %6, %6
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = call i32 @rpc_gss_mech_to_oid_call(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %12)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32* null, i32** %7, align 8
  br label %70

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 130
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @rpc_gss_svc_none, align 4
  store i32 %29, i32* %14, align 4
  br label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @rpc_gss_svc_integrity, align 4
  store i32 %34, i32* %14, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @rpc_gss_svc_privacy, align 4
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.nfssockreq*, %struct.nfssockreq** %8, align 8
  %43 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ucred*, %struct.ucred** %13, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32* @rpc_gss_secfind_call(i32 %44, %struct.ucred* %45, i8* %46, i32 %47, i32 %48)
  store i32* %49, i32** %15, align 8
  br label %60

50:                                               ; preds = %38
  %51 = load %struct.nfssockreq*, %struct.nfssockreq** %8, align 8
  %52 = getelementptr inbounds %struct.nfssockreq, %struct.nfssockreq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ucred*, %struct.ucred** %13, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32* @rpc_gss_seccreate_call(i32 %53, %struct.ucred* %54, i8* %55, i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %57, i32* null, i32* null, i32* null)
  store i32* %58, i32** %15, align 8
  %59 = load i32*, i32** %15, align 8
  store i32* %59, i32** %7, align 8
  br label %70

60:                                               ; preds = %41
  %61 = load i32*, i32** %15, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32*, i32** %15, align 8
  store i32* %64, i32** %7, align 8
  br label %70

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %6, %65
  br label %67

67:                                               ; preds = %6, %66
  %68 = load %struct.ucred*, %struct.ucred** %13, align 8
  %69 = call i32* @authunix_create(%struct.ucred* %68)
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %67, %63, %50, %23
  %71 = load i32*, i32** %7, align 8
  ret i32* %71
}

declare dso_local i32 @rpc_gss_mech_to_oid_call(i8*, i32*) #1

declare dso_local i32* @rpc_gss_secfind_call(i32, %struct.ucred*, i8*, i32, i32) #1

declare dso_local i32* @rpc_gss_seccreate_call(i32, %struct.ucred*, i8*, i8*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @authunix_create(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
