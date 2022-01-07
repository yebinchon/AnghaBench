; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_cpu_vendor_intel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_cpu_vendor_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GenuineIntel\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unknown cpu vendor \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpu_vendor_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_vendor_intel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca [13 x i8], align 1
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %5 = call i32 @do_cpuid(i32 0, i32* %4)
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = bitcast [13 x i8]* %3 to i32*
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %11 = load i32, i32* %10, align 4
  %12 = bitcast [13 x i8]* %3 to i32*
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 1
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %15 = load i32, i32* %14, align 8
  %16 = bitcast [13 x i8]* %3 to i32*
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 %15, i32* %17, align 1
  %18 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 12
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %33

23:                                               ; preds = %0
  %24 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @stderr, align 4
  %30 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
