; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_match_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_match_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ber_element* }
%struct.ber_element = type { %struct.ber_element* }

@.str = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"{s(e\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aldap_match_attr(%struct.aldap_message* %0, i8* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aldap_message*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca %struct.ber_element*, align 8
  %9 = alloca %struct.ber_element*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  store %struct.aldap_message* %0, %struct.aldap_message** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %13 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.ber_element*, %struct.ber_element** %15, align 8
  %17 = icmp eq %struct.ber_element* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %63

19:                                               ; preds = %3
  %20 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %21 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.ber_element*, %struct.ber_element** %23, align 8
  %25 = call i32 @LDAP_DEBUG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.ber_element* %24)
  %26 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %27 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.ber_element*, %struct.ber_element** %29, align 8
  store %struct.ber_element* %30, %struct.ber_element** %8, align 8
  br label %31

31:                                               ; preds = %51, %19
  %32 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %33 = icmp eq %struct.ber_element* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %64

35:                                               ; preds = %31
  %36 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %37 = call i64 @ber_get_eoc(%struct.ber_element* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %64

40:                                               ; preds = %35
  %41 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %42 = call i64 @ber_scanf_elements(%struct.ber_element* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, %struct.ber_element** %9)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %63

45:                                               ; preds = %40
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strcasecmp(i8* %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %53 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %52, i32 0, i32 0
  %54 = load %struct.ber_element*, %struct.ber_element** %53, align 8
  store %struct.ber_element* %54, %struct.ber_element** %8, align 8
  br label %31

55:                                               ; preds = %50
  %56 = load %struct.ber_element*, %struct.ber_element** %9, align 8
  %57 = call i8** @aldap_get_stringset(%struct.ber_element* %56)
  store i8** %57, i8*** %11, align 8
  %58 = icmp eq i8** %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %63

60:                                               ; preds = %55
  %61 = load i8**, i8*** %11, align 8
  %62 = load i8***, i8**** %7, align 8
  store i8** %61, i8*** %62, align 8
  store i32 1, i32* %4, align 4
  br label %66

63:                                               ; preds = %59, %44, %18
  br label %64

64:                                               ; preds = %63, %39, %34
  %65 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %65, align 8
  store i32 -1, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @LDAP_DEBUG(i8*, %struct.ber_element*) #1

declare dso_local i64 @ber_get_eoc(%struct.ber_element*) #1

declare dso_local i64 @ber_scanf_elements(%struct.ber_element*, i8*, i8**, %struct.ber_element**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8** @aldap_get_stringset(%struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
