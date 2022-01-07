; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_unbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap = type { i32, i32, i32 }
%struct.ber_element = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"d{t\00", align 1
@BER_CLASS_APP = common dso_local global i32 0, align 4
@LDAP_REQ_UNBIND_30 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"aldap_unbind\00", align 1
@ALDAP_ERR_OPERATION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aldap_unbind(%struct.aldap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aldap*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca %struct.ber_element*, align 8
  %6 = alloca i32, align 4
  store %struct.aldap* %0, %struct.aldap** %3, align 8
  store %struct.ber_element* null, %struct.ber_element** %4, align 8
  %7 = call %struct.ber_element* @ber_add_sequence(i32* null)
  store %struct.ber_element* %7, %struct.ber_element** %4, align 8
  %8 = icmp eq %struct.ber_element* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %12 = load %struct.aldap*, %struct.aldap** %3, align 8
  %13 = getelementptr inbounds %struct.aldap, %struct.aldap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @BER_CLASS_APP, align 4
  %17 = load i32, i32* @LDAP_REQ_UNBIND_30, align 4
  %18 = call %struct.ber_element* @ber_printf_elements(%struct.ber_element* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  store %struct.ber_element* %18, %struct.ber_element** %5, align 8
  %19 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %20 = icmp eq %struct.ber_element* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %38

22:                                               ; preds = %10
  %23 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %24 = call i32 @LDAP_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.ber_element* %23)
  %25 = load %struct.aldap*, %struct.aldap** %3, align 8
  %26 = getelementptr inbounds %struct.aldap, %struct.aldap* %25, i32 0, i32 2
  %27 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %28 = call i32 @ber_write_elements(i32* %26, %struct.ber_element* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %30 = call i32 @ber_free_elements(%struct.ber_element* %29)
  store %struct.ber_element* null, %struct.ber_element** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %38

34:                                               ; preds = %22
  %35 = load %struct.aldap*, %struct.aldap** %3, align 8
  %36 = getelementptr inbounds %struct.aldap, %struct.aldap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %33, %21, %9
  %39 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %40 = icmp ne %struct.ber_element* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %43 = call i32 @ber_free_elements(%struct.ber_element* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @ALDAP_ERR_OPERATION_FAILED, align 4
  %46 = load %struct.aldap*, %struct.aldap** %3, align 8
  %47 = getelementptr inbounds %struct.aldap, %struct.aldap* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %34
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.ber_element* @ber_add_sequence(i32*) #1

declare dso_local %struct.ber_element* @ber_printf_elements(%struct.ber_element*, i8*, i32, i32, i32) #1

declare dso_local i32 @LDAP_DEBUG(i8*, %struct.ber_element*) #1

declare dso_local i32 @ber_write_elements(i32*, %struct.ber_element*) #1

declare dso_local i32 @ber_free_elements(%struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
