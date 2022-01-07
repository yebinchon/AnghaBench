; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap = type { i32, i32, i32 }
%struct.ber_element = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"d{tdsst\00", align 1
@BER_CLASS_APP = common dso_local global i32 0, align 4
@LDAP_REQ_BIND = common dso_local global i64 0, align 8
@VERSION = common dso_local global i32 0, align 4
@BER_CLASS_CONTEXT = common dso_local global i32 0, align 4
@LDAP_AUTH_SIMPLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"aldap_bind\00", align 1
@ALDAP_ERR_OPERATION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aldap_bind(%struct.aldap* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aldap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ber_element*, align 8
  %9 = alloca %struct.ber_element*, align 8
  %10 = alloca i32, align 4
  store %struct.aldap* %0, %struct.aldap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ber_element* null, %struct.ber_element** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = call %struct.ber_element* @ber_add_sequence(i32* null)
  store %struct.ber_element* %19, %struct.ber_element** %8, align 8
  %20 = icmp eq %struct.ber_element* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %55

22:                                               ; preds = %18
  %23 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %24 = load %struct.aldap*, %struct.aldap** %5, align 8
  %25 = getelementptr inbounds %struct.aldap, %struct.aldap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @BER_CLASS_APP, align 4
  %29 = load i64, i64* @LDAP_REQ_BIND, align 8
  %30 = load i32, i32* @VERSION, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @BER_CLASS_CONTEXT, align 4
  %34 = load i64, i64* @LDAP_AUTH_SIMPLE, align 8
  %35 = call %struct.ber_element* @ber_printf_elements(%struct.ber_element* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i64 %29, i32 %30, i8* %31, i8* %32, i32 %33, i64 %34)
  store %struct.ber_element* %35, %struct.ber_element** %9, align 8
  %36 = load %struct.ber_element*, %struct.ber_element** %9, align 8
  %37 = icmp eq %struct.ber_element* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %55

39:                                               ; preds = %22
  %40 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %41 = call i32 @LDAP_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ber_element* %40)
  %42 = load %struct.aldap*, %struct.aldap** %5, align 8
  %43 = getelementptr inbounds %struct.aldap, %struct.aldap* %42, i32 0, i32 2
  %44 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %45 = call i32 @ber_write_elements(i32* %43, %struct.ber_element* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %47 = call i32 @ber_free_elements(%struct.ber_element* %46)
  store %struct.ber_element* null, %struct.ber_element** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %55

51:                                               ; preds = %39
  %52 = load %struct.aldap*, %struct.aldap** %5, align 8
  %53 = getelementptr inbounds %struct.aldap, %struct.aldap* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %50, %38, %21
  %56 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %57 = icmp ne %struct.ber_element* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %60 = call i32 @ber_free_elements(%struct.ber_element* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @ALDAP_ERR_OPERATION_FAILED, align 4
  %63 = load %struct.aldap*, %struct.aldap** %5, align 8
  %64 = getelementptr inbounds %struct.aldap, %struct.aldap* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 -1, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %51
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.ber_element* @ber_add_sequence(i32*) #1

declare dso_local %struct.ber_element* @ber_printf_elements(%struct.ber_element*, i8*, i32, i32, i64, i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @LDAP_DEBUG(i8*, %struct.ber_element*) #1

declare dso_local i32 @ber_write_elements(i32*, %struct.ber_element*) #1

declare dso_local i32 @ber_free_elements(%struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
