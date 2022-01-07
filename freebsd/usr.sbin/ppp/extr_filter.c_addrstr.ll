; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_addrstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_filter.c_addrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"HISADDR\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DNS0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DNS1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ncprange*, i32)* @addrstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @addrstr(%struct.ncprange* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ncprange*, align 8
  %5 = alloca i32, align 4
  store %struct.ncprange* %0, %struct.ncprange** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 128, label %7
    i32 129, label %8
    i32 131, label %9
    i32 130, label %10
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %14

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %14

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %14

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %13 = call i8* @ncprange_ntoa(%struct.ncprange* %12)
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %11, %10, %9, %8, %7
  %15 = load i8*, i8** %3, align 8
  ret i8* %15
}

declare dso_local i8* @ncprange_ntoa(%struct.ncprange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
