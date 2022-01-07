; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_enum_pairs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_enum_pairs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_pairs = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malloc() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.enum_pairs* @enum_pairs_init() #0 {
  %1 = alloca %struct.enum_pairs*, align 8
  %2 = alloca %struct.enum_pairs*, align 8
  %3 = call %struct.enum_pairs* @malloc(i32 4)
  store %struct.enum_pairs* %3, %struct.enum_pairs** %2, align 8
  %4 = icmp eq %struct.enum_pairs* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @LOG_ERR, align 4
  %7 = load i32, i32* @errno, align 4
  %8 = call i32 @strerror(i32 %7)
  %9 = call i32 @syslog(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.enum_pairs* null, %struct.enum_pairs** %1, align 8
  br label %14

10:                                               ; preds = %0
  %11 = load %struct.enum_pairs*, %struct.enum_pairs** %2, align 8
  %12 = call i32 @STAILQ_INIT(%struct.enum_pairs* %11)
  %13 = load %struct.enum_pairs*, %struct.enum_pairs** %2, align 8
  store %struct.enum_pairs* %13, %struct.enum_pairs** %1, align 8
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.enum_pairs*, %struct.enum_pairs** %1, align 8
  ret %struct.enum_pairs* %15
}

declare dso_local %struct.enum_pairs* @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @STAILQ_INIT(%struct.enum_pairs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
