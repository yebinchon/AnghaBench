; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_first_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_first_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap_message = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ber_element = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"{s(e)}e\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aldap_first_attr(%struct.aldap_message* %0, i8** %1, i8*** %2) #0 {
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
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %21 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i64 @ber_scanf_elements(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, %struct.ber_element** %8, %struct.ber_element** %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %50

28:                                               ; preds = %19
  %29 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %30 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aldap_message*, %struct.aldap_message** %5, align 8
  %37 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load %struct.ber_element*, %struct.ber_element** %8, align 8
  %41 = call i8** @aldap_get_stringset(%struct.ber_element* %40)
  store i8** %41, i8*** %11, align 8
  %42 = icmp eq i8** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %50

44:                                               ; preds = %28
  %45 = load i8**, i8*** %11, align 8
  %46 = load i8***, i8**** %7, align 8
  store i8** %45, i8*** %46, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i8* @utoa(i8* %47)
  %49 = load i8**, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  store i32 1, i32* %4, align 4
  br label %53

50:                                               ; preds = %43, %27, %18
  %51 = load i8**, i8*** %6, align 8
  store i8* null, i8** %51, align 8
  %52 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %52, align 8
  store i32 -1, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @ber_scanf_elements(%struct.TYPE_6__*, i8*, i8**, %struct.ber_element**, %struct.ber_element**) #1

declare dso_local i8** @aldap_get_stringset(%struct.ber_element*) #1

declare dso_local i8* @utoa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
