; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_next_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_next_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap_message = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.ber_element = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"{s(e)}e\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aldap_next_attr(%struct.aldap_message* %0, i8** %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aldap_message*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8***, align 8
  %8 = alloca %struct.ber_element*, align 8
  %9 = alloca %struct.ber_element*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  store %struct.aldap_message* %0, %struct.aldap_message** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8*** %2, i8**** %7, align 8
  %12 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %13 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %21 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @LDAP_DEBUG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %24)
  %26 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %27 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i64 @ber_get_eoc(%struct.TYPE_8__* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %66

34:                                               ; preds = %19
  %35 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %36 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i64 @ber_scanf_elements(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %10, %struct.ber_element** %8, %struct.ber_element** %9)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %65

43:                                               ; preds = %34
  %44 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %45 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %52 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %54, align 8
  %55 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %56 = call i8** @aldap_get_stringset(%struct.ber_element* %55)
  store i8** %56, i8*** %11, align 8
  %57 = icmp eq i8** %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %65

59:                                               ; preds = %43
  %60 = load i8**, i8*** %11, align 8
  %61 = load i8***, i8**** %7, align 8
  store i8** %60, i8*** %61, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i8* @utoa(i8* %62)
  %64 = load i8**, i8*** %6, align 8
  store i8* %63, i8** %64, align 8
  store i32 1, i32* %4, align 4
  br label %69

65:                                               ; preds = %58, %42
  br label %66

66:                                               ; preds = %65, %33, %18
  %67 = load i8**, i8*** %6, align 8
  store i8* null, i8** %67, align 8
  %68 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %68, align 8
  store i32 -1, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @LDAP_DEBUG(i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @ber_get_eoc(%struct.TYPE_8__*) #1

declare dso_local i64 @ber_scanf_elements(%struct.TYPE_8__*, i8*, i8**, %struct.ber_element**, %struct.ber_element**) #1

declare dso_local i8** @aldap_get_stringset(%struct.ber_element*) #1

declare dso_local i8* @utoa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
