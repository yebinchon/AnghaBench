; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jls/extr_jls.c_special_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jls/extr_jls.c_special_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jailparam = type { i64, i32 }

@PRINT_QUOTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"{P:\22\22}\00", align 1
@PRINT_NAMEVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"{P:-}\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ip4.addr\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ip6.addr\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.jailparam*)* @special_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_print(i32 %0, %struct.jailparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.jailparam*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.jailparam* %1, %struct.jailparam** %5, align 8
  %7 = call i32 @xo_get_style(i32* null)
  switch i32 %7, label %9 [
    i32 129, label %8
    i32 128, label %8
  ]

8:                                                ; preds = %2, %2
  store i32 1, i32* %6, align 4
  br label %10

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %15 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PRINT_QUOTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @xo_emit(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %33

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PRINT_NAMEVAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @xo_emit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %23
  br label %69

34:                                               ; preds = %13, %10
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %39 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strcmp(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @AF_INET, align 4
  %45 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %46 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %49 = call i32 @emit_ip_addr_list(i32 %44, i32 %47, %struct.jailparam* %48)
  br label %68

50:                                               ; preds = %37, %34
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %55 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strcmp(i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @AF_INET6, align 4
  %61 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %62 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.jailparam*, %struct.jailparam** %5, align 8
  %65 = call i32 @emit_ip_addr_list(i32 %60, i32 %63, %struct.jailparam* %64)
  br label %67

66:                                               ; preds = %53, %50
  store i32 0, i32* %3, align 4
  br label %70

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %33
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @xo_get_style(i32*) #1

declare dso_local i32 @xo_emit(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @emit_ip_addr_list(i32, i32, %struct.jailparam*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
