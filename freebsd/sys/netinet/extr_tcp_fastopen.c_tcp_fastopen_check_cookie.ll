; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_check_cookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_check_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }
%struct.in_conninfo = type { i32 }
%struct.rm_priotracker = type { i32 }

@V_tcp_fastopen_acceptany = common dso_local global i64 0, align 8
@TCP_FASTOPEN_COOKIE_LEN = common dso_local global i32 0, align 4
@V_tcp_fastopen_numkeys = common dso_local global i32 0, align 4
@V_tcp_fastopen_keys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TCP_FASTOPEN_MAX_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_fastopen_check_cookie(%struct.in_conninfo* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_conninfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rm_priotracker, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.in_conninfo* %0, %struct.in_conninfo** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* @V_tcp_fastopen_acceptany, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 1, i32* %5, align 4
  br label %80

19:                                               ; preds = %4
  %20 = call i32 @TCP_FASTOPEN_KEYS_RLOCK(%struct.rm_priotracker* %10)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @TCP_FASTOPEN_COOKIE_LEN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i32, i32* @V_tcp_fastopen_numkeys, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 1), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.in_conninfo*, %struct.in_conninfo** %6, align 8
  %33 = call i32 @tcp_fastopen_make_cookie(i32 %31, %struct.in_conninfo* %32)
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %13, align 4
  br label %36

35:                                               ; preds = %24
  store i32 -1, i32* %13, align 4
  br label %36

36:                                               ; preds = %35, %27
  br label %77

37:                                               ; preds = %19
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 0), align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %73, %37
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @V_tcp_fastopen_numkeys, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_keys, i32 0, i32 1), align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.in_conninfo*, %struct.in_conninfo** %6, align 8
  %51 = call i32 @tcp_fastopen_make_cookie(i32 %49, %struct.in_conninfo* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %14, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %44
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @tcp_fastopen_find_cookie_match_locked(i32* %58, i32* %14)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %77

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @TCP_FASTOPEN_MAX_KEYS, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %40

76:                                               ; preds = %40
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %62, %36
  %78 = call i32 @TCP_FASTOPEN_KEYS_RUNLOCK(%struct.rm_priotracker* %10)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %17
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @TCP_FASTOPEN_KEYS_RLOCK(%struct.rm_priotracker*) #1

declare dso_local i32 @tcp_fastopen_make_cookie(i32, %struct.in_conninfo*) #1

declare dso_local i32 @tcp_fastopen_find_cookie_match_locked(i32*, i32*) #1

declare dso_local i32 @TCP_FASTOPEN_KEYS_RUNLOCK(%struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
