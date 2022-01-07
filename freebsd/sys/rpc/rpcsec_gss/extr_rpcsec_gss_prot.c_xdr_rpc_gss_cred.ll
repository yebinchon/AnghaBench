; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss_prot.c_xdr_rpc_gss_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_cred = type { i8*, i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_gss_cred(i32* %0, %struct.rpc_gss_cred* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rpc_gss_cred*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.rpc_gss_cred* %1, %struct.rpc_gss_cred** %4, align 8
  %8 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %4, align 8
  %9 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %15, i32 0, i32 4
  %17 = call i64 @xdr_u_int(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @xdr_enum(i32* %20, i8** %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %25, i32 0, i32 3
  %27 = call i64 @xdr_u_int(i32* %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @xdr_enum(i32* %30, i8** %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %4, align 8
  %36 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %35, i32 0, i32 2
  %37 = call i64 @xdr_gss_buffer_desc(i32* %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %29, %23, %19, %2
  %40 = phi i1 [ false, %29 ], [ false, %23 ], [ false, %19 ], [ false, %2 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.rpc_gss_cred*, %struct.rpc_gss_cred** %4, align 8
  %47 = getelementptr inbounds %struct.rpc_gss_cred, %struct.rpc_gss_cred* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i64 @xdr_u_int(i32*, i32*) #1

declare dso_local i64 @xdr_enum(i32*, i8**) #1

declare dso_local i64 @xdr_gss_buffer_desc(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
