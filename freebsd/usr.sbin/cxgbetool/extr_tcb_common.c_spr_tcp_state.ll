; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_spr_tcp_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_spr_tcp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CLOSED\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LISTEN\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SYN_SENT\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SYN_RCVD\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ESTABLISHED\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"CLOSE_WAIT\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"FIN_WAIT_1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CLOSING\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"LAST_ACK\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"FIN_WAIT_2\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"TIME_WAIT\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"ESTABLISHED_RX\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"ESTABLISHED_TX\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"SYN_PEND\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"ESC_1_STATE\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ESC_2_STATE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @spr_tcp_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 0, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %82

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 1, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %81

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 2, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %80

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 3, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %79

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 4, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %78

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 5, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %77

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 6, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %76

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 7, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %75

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 8, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %74

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 9, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %73

43:                                               ; preds = %39
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 10, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %72

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 11, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %71

51:                                               ; preds = %47
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 12, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %70

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = icmp eq i32 13, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 14, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %2, align 4
  %65 = icmp eq i32 15, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %38
  br label %75

75:                                               ; preds = %74, %34
  br label %76

76:                                               ; preds = %75, %30
  br label %77

77:                                               ; preds = %76, %26
  br label %78

78:                                               ; preds = %77, %22
  br label %79

79:                                               ; preds = %78, %18
  br label %80

80:                                               ; preds = %79, %14
  br label %81

81:                                               ; preds = %80, %10
  br label %82

82:                                               ; preds = %81, %6
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
