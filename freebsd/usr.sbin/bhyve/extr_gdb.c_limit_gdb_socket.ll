; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_limit_gdb_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_limit_gdb_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIONREAD = common dso_local global i64 0, align 8
@CAP_ACCEPT = common dso_local global i32 0, align 4
@CAP_EVENT = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_WRITE = common dso_local global i32 0, align 4
@CAP_SETSOCKOPT = common dso_local global i32 0, align 4
@CAP_IOCTL = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @limit_gdb_socket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x i64], align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  %6 = load i64, i64* @FIONREAD, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* @CAP_ACCEPT, align 4
  %8 = load i32, i32* @CAP_EVENT, align 4
  %9 = load i32, i32* @CAP_READ, align 4
  %10 = load i32, i32* @CAP_WRITE, align 4
  %11 = load i32, i32* @CAP_SETSOCKOPT, align 4
  %12 = load i32, i32* @CAP_IOCTL, align 4
  %13 = call i32 @cap_rights_init(i32* %3, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @caph_rights_limit(i32 %14, i32* %3)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EX_OSERR, align 4
  %19 = call i32 @errx(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  %23 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  %24 = call i32 @nitems(i64* %23)
  %25 = call i32 @caph_ioctls_limit(i32 %21, i64* %22, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EX_OSERR, align 4
  %29 = call i32 @errx(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @caph_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
