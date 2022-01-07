; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_get_cc_from_keytab.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_get_cc_from_keytab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"gssd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @gssd_get_cc_from_keytab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gssd_get_cc_from_keytab(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %15, align 4
  %17 = call i64 @krb5_init_context(i32* %10)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %112

22:                                               ; preds = %1
  store i64 1, i64* %9, align 8
  store i64 1, i64* %8, align 8
  store i64 1, i64* %7, align 8
  store i64 1, i64* %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @krb5_parse_name(i32 %23, i8* %24, i32* %11)
  store i64 %25, i64* %4, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @krb5_get_init_creds_opt_alloc(i32 %29, i32** %14)
  store i64 %30, i64* %4, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @krb5_cc_default(i32 %35, i32* %16)
  store i64 %36, i64* %4, align 8
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @krb5_cc_initialize(i32 %41, i32 %42, i32 %43)
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i64, i64* %4, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @krb5_principal_get_realm(i32 %50, i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @krb5_get_init_creds_opt_set_default_flags(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52, i32* %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @krb5_kt_default(i32 %55, i32* %12)
  store i64 %56, i64* %4, align 8
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %48, %45
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = call i64 @krb5_get_init_creds_keytab(i32 %61, i32* %13, i32 %62, i32 %63, i32 %64, i32* null, i32* %65)
  store i64 %66, i64* %4, align 8
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i64, i64* %4, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @krb5_cc_store_cred(i32 %71, i32 %72, i32* %13)
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i64, i64* %8, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @krb5_kt_close(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @krb5_cc_close(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i64, i64* %5, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @krb5_get_init_creds_opt_free(i32 %92, i32* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i64, i64* %6, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @krb5_free_principal(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i64, i64* %9, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @krb5_free_cred_contents(i32 %106, i32* %13)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @krb5_free_context(i32 %109)
  %111 = load i64, i64* %4, align 8
  store i64 %111, i64* %2, align 8
  br label %112

112:                                              ; preds = %108, %20
  %113 = load i64, i64* %2, align 8
  ret i64 %113
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i64 @krb5_get_init_creds_opt_alloc(i32, i32**) #1

declare dso_local i64 @krb5_cc_default(i32, i32*) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_default_flags(i32, i8*, i32, i32*) #1

declare dso_local i32 @krb5_principal_get_realm(i32, i32) #1

declare dso_local i64 @krb5_kt_default(i32, i32*) #1

declare dso_local i64 @krb5_get_init_creds_keytab(i32, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @krb5_cc_store_cred(i32, i32, i32*) #1

declare dso_local i32 @krb5_kt_close(i32, i32) #1

declare dso_local i32 @krb5_cc_close(i32, i32) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
