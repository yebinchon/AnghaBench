; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_uefisign.c_magic.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_uefisign.c_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"1.3.6.1.4.1.311.2.1.4\00", align 1
@magic_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"BIO_new_mem_buf(3) failed\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"NCONF_new(3) failed\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"NCONF_load_bio(3) failed\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"asn1\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"NCONF_get_string(3) failed\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"ASN1_generate_nconf(3) failed\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"PKCS7_dataInit(3) failed\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"PKCS7_dataFinal(3) failed\00", align 1
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i64)* @magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @magic(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i8* @bin2hex(i8* %20, i64 %21)
  store i8* %22, i8** %14, align 8
  %23 = call i32 @OBJ_create(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* @magic_fmt, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = call i32 @asprintf(i8** %15, i32 %24, i8* %25)
  %27 = load i8*, i8** %15, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %3
  %32 = load i8*, i8** %15, align 8
  %33 = call i32* @BIO_new_mem_buf(i8* %32, i32 -1)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @ERR_print_errors_fp(i32 %37)
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %31
  %41 = call i32* @NCONF_new(i32* null)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @ERR_print_errors_fp(i32 %45)
  %47 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @NCONF_load_bio(i32* %49, i32* %50, i32* null)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @ERR_print_errors_fp(i32 %55)
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32*, i32** %11, align 8
  %60 = call i8* @NCONF_get_string(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 @ERR_print_errors_fp(i32 %64)
  %66 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i8*, i8** %16, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* @ASN1_generate_nconf(i8* %68, i32* %69)
  store i32* %70, i32** %9, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @ERR_print_errors_fp(i32 %74)
  %76 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @i2d_ASN1_TYPE(i32* %78, i8** null)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i8* @calloc(i32 1, i32 %80)
  store i8* %81, i8** %12, align 8
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @i2d_ASN1_TYPE(i32* %87, i8** %13)
  store i8* null, i8** %13, align 8
  store i32* null, i32** %9, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = call i32* @PKCS7_dataInit(%struct.TYPE_9__* %89, i32* null)
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 @ERR_print_errors_fp(i32 %94)
  %96 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %86
  %98 = load i32*, i32** %8, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i32, i32* %17, align 4
  %102 = sub nsw i32 %101, 2
  %103 = call i32 @BIO_write(i32* %98, i8* %100, i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @PKCS7_dataFinal(%struct.TYPE_9__* %104, i32* %105)
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %97
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 @ERR_print_errors_fp(i32 %110)
  %112 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %97
  %114 = call i32* (...) @ASN1_TYPE_new()
  store i32* %114, i32** %9, align 8
  %115 = call i32* (...) @ASN1_STRING_new()
  store i32* %115, i32** %10, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @ASN1_STRING_set(i32* %116, i8* %117, i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @ASN1_TYPE_set(i32* %120, i32 %121, i32* %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @PKCS7_set0_type_other(i32 %129, i32 %130, i32* %131)
  ret void
}

declare dso_local i8* @bin2hex(i8*, i64) #1

declare dso_local i32 @OBJ_create(i8*, i32*, i32*) #1

declare dso_local i32 @asprintf(i8**, i32, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @BIO_new_mem_buf(i8*, i32) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @NCONF_new(i32*) #1

declare dso_local i32 @NCONF_load_bio(i32*, i32*, i32*) #1

declare dso_local i8* @NCONF_get_string(i32*, i8*, i8*) #1

declare dso_local i32* @ASN1_generate_nconf(i8*, i32*) #1

declare dso_local i32 @i2d_ASN1_TYPE(i32*, i8**) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32* @PKCS7_dataInit(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @PKCS7_dataFinal(%struct.TYPE_9__*, i32*) #1

declare dso_local i32* @ASN1_TYPE_new(...) #1

declare dso_local i32* @ASN1_STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @ASN1_TYPE_set(i32*, i32, i32*) #1

declare dso_local i32 @PKCS7_set0_type_other(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
