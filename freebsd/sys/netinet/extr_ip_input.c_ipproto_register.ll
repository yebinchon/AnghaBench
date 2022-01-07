; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_input.c_ipproto_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_input.c_ipproto_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i16, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.protosw*, %struct.protosw* }

@IPPROTO_MAX = common dso_local global i16 0, align 2
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@IPPROTO_RAW = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@ip_protox = common dso_local global i32* null, align 8
@inetsw = common dso_local global %struct.protosw* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@inetdomain = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipproto_register(i16 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca %struct.protosw*, align 8
  store i16 %0, i16* %3, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i32
  %11 = load i16, i16* @IPPROTO_MAX, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %15, i32* %2, align 4
  br label %89

16:                                               ; preds = %8
  %17 = load i64, i64* @PF_INET, align 8
  %18 = load i32, i32* @IPPROTO_RAW, align 4
  %19 = load i32, i32* @SOCK_RAW, align 4
  %20 = call %struct.protosw* @pffindproto(i64 %17, i32 %18, i32 %19)
  store %struct.protosw* %20, %struct.protosw** %4, align 8
  %21 = load %struct.protosw*, %struct.protosw** %4, align 8
  %22 = icmp eq %struct.protosw* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @EPFNOSUPPORT, align 4
  store i32 %24, i32* %2, align 4
  br label %89

25:                                               ; preds = %16
  %26 = load i32*, i32** @ip_protox, align 8
  %27 = load i16, i16* %3, align 2
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.protosw*, %struct.protosw** %4, align 8
  %33 = load %struct.protosw*, %struct.protosw** @inetsw, align 8
  %34 = ptrtoint %struct.protosw* %32 to i64
  %35 = ptrtoint %struct.protosw* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 16
  %38 = icmp ne i64 %31, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @EEXIST, align 4
  store i32 %40, i32* %2, align 4
  br label %89

41:                                               ; preds = %25
  %42 = load %struct.protosw*, %struct.protosw** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inetdomain, i32 0, i32 1), align 8
  store %struct.protosw* %42, %struct.protosw** %4, align 8
  br label %43

43:                                               ; preds = %84, %41
  %44 = load %struct.protosw*, %struct.protosw** %4, align 8
  %45 = load %struct.protosw*, %struct.protosw** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inetdomain, i32 0, i32 0), align 8
  %46 = icmp ult %struct.protosw* %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load %struct.protosw*, %struct.protosw** %4, align 8
  %49 = getelementptr inbounds %struct.protosw, %struct.protosw* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PF_INET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %47
  %56 = load %struct.protosw*, %struct.protosw** %4, align 8
  %57 = getelementptr inbounds %struct.protosw, %struct.protosw* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 8
  %59 = sext i16 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  %62 = load %struct.protosw*, %struct.protosw** %4, align 8
  %63 = getelementptr inbounds %struct.protosw, %struct.protosw* %62, i32 0, i32 0
  %64 = load i16, i16* %63, align 8
  %65 = sext i16 %64 to i32
  %66 = load i16, i16* %3, align 2
  %67 = sext i16 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.protosw*, %struct.protosw** %4, align 8
  %71 = load %struct.protosw*, %struct.protosw** @inetsw, align 8
  %72 = ptrtoint %struct.protosw* %70 to i64
  %73 = ptrtoint %struct.protosw* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 16
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** @ip_protox, align 8
  %78 = load %struct.protosw*, %struct.protosw** %4, align 8
  %79 = getelementptr inbounds %struct.protosw, %struct.protosw* %78, i32 0, i32 0
  %80 = load i16, i16* %79, align 8
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %76, i32* %82, align 4
  store i32 0, i32* %2, align 4
  br label %89

83:                                               ; preds = %61, %55, %47
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.protosw*, %struct.protosw** %4, align 8
  %86 = getelementptr inbounds %struct.protosw, %struct.protosw* %85, i32 1
  store %struct.protosw* %86, %struct.protosw** %4, align 8
  br label %43

87:                                               ; preds = %43
  %88 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %69, %39, %23, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.protosw* @pffindproto(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
