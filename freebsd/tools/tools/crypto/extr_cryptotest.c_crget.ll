; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptotest.c_crget.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptotest.c_crget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRIOGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ioctl(CRIOGET)\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fcntl(F_SETFD) (crget)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crget() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @devcrypto()
  %3 = load i32, i32* @CRIOGET, align 4
  %4 = call i32 @ioctl(i32 %2, i32 %3, i32* %1)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @F_SETFD, align 4
  %11 = call i32 @fcntl(i32 %9, i32 %10, i32 1)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @devcrypto(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
