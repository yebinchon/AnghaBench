; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_lcp_auth_nak.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_lcp_auth_nak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.fsm_decode = type { i32 }
%struct.fsm_opt = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@TY_AUTHPROTO = common dso_local global i32 0, align 4
@PROTO_PAP = common dso_local global i32 0, align 4
@PROTO_CHAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcp*, %struct.fsm_decode*)* @lcp_auth_nak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcp_auth_nak(%struct.lcp* %0, %struct.fsm_decode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lcp*, align 8
  %5 = alloca %struct.fsm_decode*, align 8
  %6 = alloca %struct.fsm_opt, align 8
  store %struct.lcp* %0, %struct.lcp** %4, align 8
  store %struct.fsm_decode* %1, %struct.fsm_decode** %5, align 8
  %7 = load i32, i32* @TY_AUTHPROTO, align 4
  %8 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.lcp*, %struct.lcp** %4, align 8
  %11 = getelementptr inbounds %struct.lcp, %struct.lcp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IsAccepted(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load i32, i32* @PROTO_PAP, align 4
  %20 = ashr i32 %19, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %21, i8* %24, align 1
  %25 = load i32, i32* @PROTO_PAP, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %26, i8* %29, align 1
  %30 = load %struct.fsm_decode*, %struct.fsm_decode** %5, align 8
  %31 = call i32 @fsm_nak(%struct.fsm_decode* %30, %struct.fsm_opt* %6)
  store i32 1, i32* %3, align 4
  br label %95

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 5, i32* %34, align 8
  %35 = load i32, i32* @PROTO_CHAP, align 4
  %36 = ashr i32 %35, 8
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %37, i8* %40, align 1
  %41 = load i32, i32* @PROTO_CHAP, align 4
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 %42, i8* %45, align 1
  %46 = load %struct.lcp*, %struct.lcp** %4, align 8
  %47 = getelementptr inbounds %struct.lcp, %struct.lcp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IsAccepted(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 5, i8* %55, align 1
  %56 = load %struct.fsm_decode*, %struct.fsm_decode** %5, align 8
  %57 = call i32 @fsm_nak(%struct.fsm_decode* %56, %struct.fsm_opt* %6)
  br label %94

58:                                               ; preds = %32
  %59 = load %struct.lcp*, %struct.lcp** %4, align 8
  %60 = getelementptr inbounds %struct.lcp, %struct.lcp* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IsAccepted(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.lcp*, %struct.lcp** %4, align 8
  %67 = getelementptr inbounds %struct.lcp, %struct.lcp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IsAccepted(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65, %58
  %73 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8 -128, i8* %75, align 1
  %76 = load %struct.fsm_decode*, %struct.fsm_decode** %5, align 8
  %77 = call i32 @fsm_nak(%struct.fsm_decode* %76, %struct.fsm_opt* %6)
  br label %93

78:                                               ; preds = %65
  %79 = load %struct.lcp*, %struct.lcp** %4, align 8
  %80 = getelementptr inbounds %struct.lcp, %struct.lcp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IsAccepted(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %6, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8 -127, i8* %88, align 1
  %89 = load %struct.fsm_decode*, %struct.fsm_decode** %5, align 8
  %90 = call i32 @fsm_nak(%struct.fsm_decode* %89, %struct.fsm_opt* %6)
  br label %92

91:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %95

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %72
  br label %94

94:                                               ; preds = %93, %52
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %91, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @IsAccepted(i32) #1

declare dso_local i32 @fsm_nak(%struct.fsm_decode*, %struct.fsm_opt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
