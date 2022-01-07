; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_j = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"46cj:Llp:P:qSsUuvw\00", align 1
@opt_4 = common dso_local global i32 0, align 4
@opt_6 = common dso_local global i32 0, align 4
@opt_c = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@jail_errmsg = common dso_local global i32 0, align 4
@opt_L = common dso_local global i32 0, align 4
@opt_l = common dso_local global i32 0, align 4
@opt_q = common dso_local global i32 0, align 4
@opt_S = common dso_local global i32 0, align 4
@opt_s = common dso_local global i32 0, align 4
@opt_U = common dso_local global i32 0, align 4
@opt_u = common dso_local global i32 0, align 4
@opt_v = common dso_local global i32 0, align 4
@opt_w = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@protos = common dso_local global i64* null, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* @opt_j, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %45 [
    i32 52, label %16
    i32 54, label %17
    i32 99, label %18
    i32 106, label %19
    i32 76, label %28
    i32 108, label %29
    i32 112, label %30
    i32 80, label %33
    i32 113, label %36
    i32 83, label %37
    i32 115, label %38
    i32 85, label %39
    i32 117, label %40
    i32 118, label %41
    i32 119, label %44
  ]

16:                                               ; preds = %14
  store i32 1, i32* @opt_4, align 4
  br label %47

17:                                               ; preds = %14
  store i32 1, i32* @opt_6, align 4
  br label %47

18:                                               ; preds = %14
  store i32 1, i32* @opt_c, align 4
  br label %47

19:                                               ; preds = %14
  %20 = load i32, i32* @optarg, align 4
  %21 = call i32 @jail_getid(i32 %20)
  store i32 %21, i32* @opt_j, align 4
  %22 = load i32, i32* @opt_j, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @jail_errmsg, align 4
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %19
  br label %47

28:                                               ; preds = %14
  store i32 1, i32* @opt_L, align 4
  br label %47

29:                                               ; preds = %14
  store i32 1, i32* @opt_l, align 4
  br label %47

30:                                               ; preds = %14
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @parse_ports(i32 %31)
  br label %47

33:                                               ; preds = %14
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @parse_protos(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %47

36:                                               ; preds = %14
  store i32 1, i32* @opt_q, align 4
  br label %47

37:                                               ; preds = %14
  store i32 1, i32* @opt_S, align 4
  br label %47

38:                                               ; preds = %14
  store i32 1, i32* @opt_s, align 4
  br label %47

39:                                               ; preds = %14
  store i32 1, i32* @opt_U, align 4
  br label %47

40:                                               ; preds = %14
  store i32 1, i32* @opt_u, align 4
  br label %47

41:                                               ; preds = %14
  %42 = load i32, i32* @opt_v, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @opt_v, align 4
  br label %47

44:                                               ; preds = %14
  store i32 1, i32* @opt_w, align 4
  br label %47

45:                                               ; preds = %14
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %44, %41, %40, %39, %38, %37, %36, %33, %30, %29, %28, %27, %18, %17, %16
  br label %9

48:                                               ; preds = %9
  %49 = load i64, i64* @optind, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @optind, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 %54
  store i8** %56, i8*** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i32, i32* @opt_4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @opt_6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* @opt_6, align 4
  store i32 1, i32* @opt_4, align 4
  br label %71

71:                                               ; preds = %70, %67, %64, %61
  %72 = load i32, i32* @opt_4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @opt_6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @opt_u, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 1, i32* @opt_u, align 4
  store i32 1, i32* @opt_6, align 4
  store i32 1, i32* @opt_4, align 4
  br label %81

81:                                               ; preds = %80, %77, %74, %71
  %82 = load i32, i32* @opt_4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @opt_6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 (...) @set_default_protos()
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %87, %84
  %93 = load i32, i32* @opt_c, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @opt_l, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i32 1, i32* @opt_l, align 4
  store i32 1, i32* @opt_c, align 4
  br label %99

99:                                               ; preds = %98, %95, %92
  %100 = load i32, i32* @opt_4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @opt_6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %102, %99
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %128, %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %106
  %111 = load i64*, i64** @protos, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IPPROTO_SCTP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = call i32 (...) @gather_sctp()
  br label %127

120:                                              ; preds = %110
  %121 = load i64*, i64** @protos, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @gather_inet(i64 %125)
  br label %127

127:                                              ; preds = %120, %118
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %106

131:                                              ; preds = %106
  br label %132

132:                                              ; preds = %131, %102
  %133 = load i32, i32* @opt_u, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load i32, i32* @opt_4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @opt_6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %141, %132
  %145 = load i32, i32* @SOCK_STREAM, align 4
  %146 = call i32 @gather_unix(i32 %145)
  %147 = load i32, i32* @SOCK_DGRAM, align 4
  %148 = call i32 @gather_unix(i32 %147)
  %149 = load i32, i32* @SOCK_SEQPACKET, align 4
  %150 = call i32 @gather_unix(i32 %149)
  br label %151

151:                                              ; preds = %144, %141, %138, %135
  %152 = call i32 (...) @getfiles()
  %153 = call i32 (...) @display()
  %154 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @jail_getid(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @parse_ports(i32) #1

declare dso_local i32 @parse_protos(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @set_default_protos(...) #1

declare dso_local i32 @gather_sctp(...) #1

declare dso_local i32 @gather_inet(i64) #1

declare dso_local i32 @gather_unix(i32) #1

declare dso_local i32 @getfiles(...) #1

declare dso_local i32 @display(...) #1

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
