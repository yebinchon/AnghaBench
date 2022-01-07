; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oid_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oid_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid = type { i32 }
%struct.oidname = type { i32 }
%struct.oidformat = type { i32 }
%struct.oidvalue = type { i32 }
%struct.oiddescription = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"# HELP \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oid*, %struct.oidname*, i32, i32*)* @oid_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oid_print(%struct.oid* %0, %struct.oidname* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.oid*, align 8
  %6 = alloca %struct.oidname*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.oidformat, align 4
  %10 = alloca %struct.oidvalue, align 4
  %11 = alloca %struct.oiddescription, align 4
  store %struct.oid* %0, %struct.oid** %5, align 8
  store %struct.oidname* %1, %struct.oidname** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.oid*, %struct.oid** %5, align 8
  %13 = call i32 @oid_get_format(%struct.oid* %12, %struct.oidformat* %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.oid*, %struct.oid** %5, align 8
  %17 = call i32 @oid_get_value(%struct.oid* %16, %struct.oidformat* %9, %struct.oidvalue* %10)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %4
  br label %56

20:                                               ; preds = %15
  %21 = load %struct.oid*, %struct.oid** %5, align 8
  %22 = load %struct.oidname*, %struct.oidname** %6, align 8
  %23 = call i32 @oid_get_name(%struct.oid* %21, %struct.oidname* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.oidname*, %struct.oidname** %6, align 8
  %28 = call i32 @oidname_has_labels(%struct.oidname* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = load %struct.oid*, %struct.oid** %5, align 8
  %32 = call i64 @oid_get_description(%struct.oid* %31, %struct.oiddescription* %11)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fprintf(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.oidname*, %struct.oidname** %6, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @oidname_print(%struct.oidname* %37, %struct.oidformat* %9, i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @fputc(i8 signext 32, i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @oiddescription_print(%struct.oiddescription* %11, i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @fputc(i8 signext 10, i32* %44)
  br label %46

46:                                               ; preds = %34, %30, %26, %20
  %47 = load %struct.oidname*, %struct.oidname** %6, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @oidname_print(%struct.oidname* %47, %struct.oidformat* %9, i32* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @fputc(i8 signext 32, i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @oidvalue_print(%struct.oidvalue* %10, i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @fputc(i8 signext 10, i32* %54)
  br label %56

56:                                               ; preds = %46, %19
  ret void
}

declare dso_local i32 @oid_get_format(%struct.oid*, %struct.oidformat*) #1

declare dso_local i32 @oid_get_value(%struct.oid*, %struct.oidformat*, %struct.oidvalue*) #1

declare dso_local i32 @oid_get_name(%struct.oid*, %struct.oidname*) #1

declare dso_local i32 @oidname_has_labels(%struct.oidname*) #1

declare dso_local i64 @oid_get_description(%struct.oid*, %struct.oiddescription*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @oidname_print(%struct.oidname*, %struct.oidformat*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @oiddescription_print(%struct.oiddescription*, i32*) #1

declare dso_local i32 @oidvalue_print(%struct.oidvalue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
