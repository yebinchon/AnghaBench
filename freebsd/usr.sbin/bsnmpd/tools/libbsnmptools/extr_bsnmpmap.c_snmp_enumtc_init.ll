; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_enumtc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_enumtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_type = type { i32* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malloc() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.enum_type* @snmp_enumtc_init(i8* %0) #0 {
  %2 = alloca %struct.enum_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.enum_type*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.enum_type* @calloc(i32 1, i32 8)
  store %struct.enum_type* %5, %struct.enum_type** %4, align 8
  %6 = icmp eq %struct.enum_type* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @LOG_ERR, align 4
  %9 = load i32, i32* @errno, align 4
  %10 = call i32 @strerror(i32 %9)
  %11 = call i32 @syslog(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10)
  store %struct.enum_type* null, %struct.enum_type** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @strdup(i8* %13)
  %15 = load %struct.enum_type*, %struct.enum_type** %4, align 8
  %16 = getelementptr inbounds %struct.enum_type, %struct.enum_type* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = icmp eq i32* %14, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.enum_type*, %struct.enum_type** %4, align 8
  %24 = call i32 @free(%struct.enum_type* %23)
  store %struct.enum_type* null, %struct.enum_type** %2, align 8
  br label %27

25:                                               ; preds = %12
  %26 = load %struct.enum_type*, %struct.enum_type** %4, align 8
  store %struct.enum_type* %26, %struct.enum_type** %2, align 8
  br label %27

27:                                               ; preds = %25, %18, %7
  %28 = load %struct.enum_type*, %struct.enum_type** %2, align 8
  ret %struct.enum_type* %28
}

declare dso_local %struct.enum_type* @calloc(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.enum_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
