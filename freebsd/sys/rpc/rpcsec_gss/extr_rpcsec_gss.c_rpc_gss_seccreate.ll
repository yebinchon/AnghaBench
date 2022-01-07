; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_seccreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/rpcsec_gss/extr_rpcsec_gss.c_rpc_gss_seccreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }

@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rpc_gss_seccreate(i32* %0, %struct.ucred* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ucred*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.ucred* %1, %struct.ucred** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = call i32 @rpc_gss_mech_to_oid(i8* %22, i32* %20)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %9
  store i32* null, i32** %10, align 8
  br label %49

26:                                               ; preds = %9
  %27 = load i8*, i8** %17, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8*, i8** %17, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = call i32 @rpc_gss_qop_to_num(i8* %30, i8* %31, i32* %21)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32* null, i32** %10, align 8
  br label %49

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  store i32 %37, i32* %21, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.ucred*, %struct.ucred** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %21, align 4
  %46 = load i32*, i32** %18, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = call i32* @rpc_gss_seccreate_int(i32* %39, %struct.ucred* %40, i8* %41, i8* %42, i32 %43, i32 %44, i32 %45, i32* %46, i32* %47)
  store i32* %48, i32** %10, align 8
  br label %49

49:                                               ; preds = %38, %34, %25
  %50 = load i32*, i32** %10, align 8
  ret i32* %50
}

declare dso_local i32 @rpc_gss_mech_to_oid(i8*, i32*) #1

declare dso_local i32 @rpc_gss_qop_to_num(i8*, i8*, i32*) #1

declare dso_local i32* @rpc_gss_seccreate_int(i32*, %struct.ucred*, i8*, i8*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
