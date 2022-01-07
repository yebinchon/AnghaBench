; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netpfil/pf/ioctl/extr_validation.c_common_init_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netpfil/pf/ioctl/extr_validation.c_common_init_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"anchor\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @common_init_tbl(%struct.pfr_table* %0) #0 {
  %2 = alloca %struct.pfr_table*, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %2, align 8
  %3 = load %struct.pfr_table*, %struct.pfr_table** %2, align 8
  %4 = call i32 @bzero(%struct.pfr_table* %3, i32 24)
  %5 = load %struct.pfr_table*, %struct.pfr_table** %2, align 8
  %6 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @strcpy(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.pfr_table*, %struct.pfr_table** %2, align 8
  %10 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strcpy(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.pfr_table*, %struct.pfr_table** %2, align 8
  %14 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.pfr_table*, %struct.pfr_table** %2, align 8
  %16 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.pfr_table*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
