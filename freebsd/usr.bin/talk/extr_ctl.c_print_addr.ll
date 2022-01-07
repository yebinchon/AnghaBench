; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_ctl.c_print_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_ctl.c_print_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i64*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"addr = %lx, port = %o, family = %o zero = \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%o \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_addr(%struct.sockaddr_in* byval(%struct.sockaddr_in) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %0, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8, i32 %10)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %0, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %12

27:                                               ; preds = %12
  %28 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
