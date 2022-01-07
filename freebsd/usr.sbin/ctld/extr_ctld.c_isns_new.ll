; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.isns = type { i32, i32, %struct.conf* }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@i_next = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"3205\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid iSNS address %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isns_new(%struct.conf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.isns*, align 8
  store %struct.conf* %0, %struct.conf** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.isns* @calloc(i32 1, i32 16)
  store %struct.isns* %7, %struct.isns** %6, align 8
  %8 = load %struct.isns*, %struct.isns** %6, align 8
  %9 = icmp eq %struct.isns* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.conf*, %struct.conf** %4, align 8
  %14 = load %struct.isns*, %struct.isns** %6, align 8
  %15 = getelementptr inbounds %struct.isns, %struct.isns* %14, i32 0, i32 2
  store %struct.conf* %13, %struct.conf** %15, align 8
  %16 = load %struct.conf*, %struct.conf** %4, align 8
  %17 = getelementptr inbounds %struct.conf, %struct.conf* %16, i32 0, i32 0
  %18 = load %struct.isns*, %struct.isns** %6, align 8
  %19 = load i32, i32* @i_next, align 4
  %20 = call i32 @TAILQ_INSERT_TAIL(i32* %17, %struct.isns* %18, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @checked_strdup(i8* %21)
  %23 = load %struct.isns*, %struct.isns** %6, align 8
  %24 = getelementptr inbounds %struct.isns, %struct.isns* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.isns*, %struct.isns** %6, align 8
  %26 = getelementptr inbounds %struct.isns, %struct.isns* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.isns*, %struct.isns** %6, align 8
  %29 = getelementptr inbounds %struct.isns, %struct.isns* %28, i32 0, i32 1
  %30 = call i64 @parse_addr_port(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %12
  %33 = load %struct.isns*, %struct.isns** %6, align 8
  %34 = getelementptr inbounds %struct.isns, %struct.isns* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @log_warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.isns*, %struct.isns** %6, align 8
  %38 = call i32 @isns_delete(%struct.isns* %37)
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.isns* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.isns*, i32) #1

declare dso_local i32 @checked_strdup(i8*) #1

declare dso_local i64 @parse_addr_port(i32, i8*, i32*) #1

declare dso_local i32 @log_warnx(i8*, i32) #1

declare dso_local i32 @isns_delete(%struct.isns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
