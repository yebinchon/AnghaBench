; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_uefisign.c_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_uefisign.c_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"BIO_new_mem_buf(3) failed\00", align 1
@PKCS7_BINARY = common dso_local global i32 0, align 4
@PKCS7_PARTIAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PKCS7_sign(3) failed\00", align 1
@DIGEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"EVP_get_digestbyname(\22%s\22) failed\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"PKCS7_sign_add_signer(3) failed\00", align 1
@NID_pkcs9_contentType = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"1.3.6.1.4.1.311.2.1.4\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"BIO_new(3) failed\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"i2d_PKCS7_bio(3) failed\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"BIO_get_mem_data(3) failed\00", align 1
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sign(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @receive_chunk(i8** %12, i64* %14, i32 %25)
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32* @BIO_new_mem_buf(i8* %27, i64 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @ERR_print_errors_fp(i32 %33)
  %35 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @PKCS7_BINARY, align 4
  %39 = load i32, i32* @PKCS7_PARTIAL, align 4
  %40 = or i32 %38, %39
  %41 = call i32* @PKCS7_sign(i32* null, i32* null, i32* null, i32* %37, i32 %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @ERR_print_errors_fp(i32 %45)
  %47 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i32, i32* @DIGEST, align 4
  %50 = call i32* @EVP_get_digestbyname(i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @ERR_print_errors_fp(i32 %54)
  %56 = load i32, i32* @DIGEST, align 4
  %57 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32* @PKCS7_sign_add_signer(i32* %59, i32* %60, i32* %61, i32* %62, i32 0)
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @ERR_print_errors_fp(i32 %67)
  %69 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* @NID_pkcs9_contentType, align 4
  %73 = load i32, i32* @V_ASN1_OBJECT, align 4
  %74 = call i32 @OBJ_txt2obj(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %75 = call i32 @PKCS7_add_signed_attribute(i32* %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @magic(i32* %76, i8* %77, i64 %78)
  %80 = call i32 (...) @BIO_s_mem()
  %81 = call i32* @BIO_new(i32 %80)
  store i32* %81, i32** %9, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 @ERR_print_errors_fp(i32 %85)
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %70
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @i2d_PKCS7_bio(i32* %89, i32* %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 @ERR_print_errors_fp(i32 %95)
  %97 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32*, i32** %9, align 8
  %100 = call i64 @BIO_get_mem_data(i32* %99, i8** %13)
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp ule i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 @ERR_print_errors_fp(i32 %104)
  %106 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* @BIO_NOCLOSE, align 4
  %110 = call i32 @BIO_set_close(i32* %108, i32 %109)
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @BIO_free(i32* %111)
  %113 = load i8*, i8** %13, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @send_chunk(i8* %113, i64 %114, i32 %115)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @receive_chunk(i8**, i64*, i32) #1

declare dso_local i32* @BIO_new_mem_buf(i8*, i64) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @PKCS7_sign(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32* @EVP_get_digestbyname(i32) #1

declare dso_local i32* @PKCS7_sign_add_signer(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @PKCS7_add_signed_attribute(i32*, i32, i32, i32) #1

declare dso_local i32 @OBJ_txt2obj(i8*, i32) #1

declare dso_local i32 @magic(i32*, i8*, i64) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @i2d_PKCS7_bio(i32*, i32*) #1

declare dso_local i64 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @BIO_set_close(i32*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @send_chunk(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
