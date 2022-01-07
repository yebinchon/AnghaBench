; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_unregisterrpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_unregisterrpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32 }
%struct.servtab = type { i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, %struct.servtab* }

@SIGBLOCK = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@udpconf = common dso_local global %struct.netconfig* null, align 8
@tcpconf = common dso_local global %struct.netconfig* null, align 8
@udp6conf = common dso_local global %struct.netconfig* null, align 8
@tcp6conf = common dso_local global %struct.netconfig* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@servtab = common dso_local global %struct.servtab* null, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"UNREG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.servtab*)* @unregisterrpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregisterrpc(%struct.servtab* %0) #0 {
  %2 = alloca %struct.servtab*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.servtab*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netconfig*, align 8
  %7 = alloca %struct.netconfig*, align 8
  store %struct.servtab* %0, %struct.servtab** %2, align 8
  %8 = load i32, i32* @SIGBLOCK, align 4
  %9 = call i64 @sigblock(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.servtab*, %struct.servtab** %2, align 8
  %11 = getelementptr inbounds %struct.servtab, %struct.servtab* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCK_DGRAM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load %struct.netconfig*, %struct.netconfig** @udpconf, align 8
  br label %19

17:                                               ; preds = %1
  %18 = load %struct.netconfig*, %struct.netconfig** @tcpconf, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi %struct.netconfig* [ %16, %15 ], [ %18, %17 ]
  store %struct.netconfig* %20, %struct.netconfig** %6, align 8
  %21 = load %struct.servtab*, %struct.servtab** %2, align 8
  %22 = getelementptr inbounds %struct.servtab, %struct.servtab* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_DGRAM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.netconfig*, %struct.netconfig** @udp6conf, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load %struct.netconfig*, %struct.netconfig** @tcp6conf, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi %struct.netconfig* [ %27, %26 ], [ %29, %28 ]
  store %struct.netconfig* %31, %struct.netconfig** %7, align 8
  %32 = load %struct.servtab*, %struct.servtab** %2, align 8
  %33 = getelementptr inbounds %struct.servtab, %struct.servtab* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_INET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store %struct.netconfig* null, %struct.netconfig** %7, align 8
  br label %45

38:                                               ; preds = %30
  %39 = load %struct.servtab*, %struct.servtab** %2, align 8
  %40 = getelementptr inbounds %struct.servtab, %struct.servtab* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store %struct.netconfig* null, %struct.netconfig** %6, align 8
  br label %44

44:                                               ; preds = %43, %38
  br label %45

45:                                               ; preds = %44, %37
  %46 = load %struct.servtab*, %struct.servtab** @servtab, align 8
  store %struct.servtab* %46, %struct.servtab** %4, align 8
  br label %47

47:                                               ; preds = %111, %45
  %48 = load %struct.servtab*, %struct.servtab** %4, align 8
  %49 = icmp ne %struct.servtab* %48, null
  br i1 %49, label %50, label %115

50:                                               ; preds = %47
  %51 = load %struct.servtab*, %struct.servtab** %4, align 8
  %52 = load %struct.servtab*, %struct.servtab** %2, align 8
  %53 = icmp eq %struct.servtab* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %111

55:                                               ; preds = %50
  %56 = load %struct.servtab*, %struct.servtab** %4, align 8
  %57 = getelementptr inbounds %struct.servtab, %struct.servtab* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %55
  %61 = load %struct.servtab*, %struct.servtab** %4, align 8
  %62 = getelementptr inbounds %struct.servtab, %struct.servtab* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load %struct.servtab*, %struct.servtab** %2, align 8
  %67 = getelementptr inbounds %struct.servtab, %struct.servtab* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.servtab*, %struct.servtab** %4, align 8
  %70 = getelementptr inbounds %struct.servtab, %struct.servtab* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @strcmp(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %65
  %75 = load %struct.servtab*, %struct.servtab** %2, align 8
  %76 = getelementptr inbounds %struct.servtab, %struct.servtab* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.servtab*, %struct.servtab** %4, align 8
  %79 = getelementptr inbounds %struct.servtab, %struct.servtab* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74, %65, %60, %55
  br label %111

83:                                               ; preds = %74
  %84 = load %struct.servtab*, %struct.servtab** %4, align 8
  %85 = getelementptr inbounds %struct.servtab, %struct.servtab* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AF_INET, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store %struct.netconfig* null, %struct.netconfig** %6, align 8
  br label %90

90:                                               ; preds = %89, %83
  %91 = load %struct.servtab*, %struct.servtab** %4, align 8
  %92 = getelementptr inbounds %struct.servtab, %struct.servtab* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AF_INET6, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  store %struct.netconfig* null, %struct.netconfig** %7, align 8
  %97 = load %struct.servtab*, %struct.servtab** %2, align 8
  %98 = getelementptr inbounds %struct.servtab, %struct.servtab* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store %struct.netconfig* null, %struct.netconfig** %6, align 8
  br label %102

102:                                              ; preds = %101, %96
  br label %103

103:                                              ; preds = %102, %90
  %104 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %105 = icmp eq %struct.netconfig* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %108 = icmp eq %struct.netconfig* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %170

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %82, %54
  %112 = load %struct.servtab*, %struct.servtab** %4, align 8
  %113 = getelementptr inbounds %struct.servtab, %struct.servtab* %112, i32 0, i32 10
  %114 = load %struct.servtab*, %struct.servtab** %113, align 8
  store %struct.servtab* %114, %struct.servtab** %4, align 8
  br label %47

115:                                              ; preds = %47
  %116 = load i64, i64* @debug, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.servtab*, %struct.servtab** %2, align 8
  %120 = call i32 @print_service(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.servtab* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.servtab*, %struct.servtab** %2, align 8
  %123 = getelementptr inbounds %struct.servtab, %struct.servtab* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %3, align 8
  br label %125

125:                                              ; preds = %152, %121
  %126 = load i64, i64* %3, align 8
  %127 = load %struct.servtab*, %struct.servtab** %2, align 8
  %128 = getelementptr inbounds %struct.servtab, %struct.servtab* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp sle i64 %126, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %133 = icmp ne %struct.netconfig* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.servtab*, %struct.servtab** %2, align 8
  %136 = getelementptr inbounds %struct.servtab, %struct.servtab* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %3, align 8
  %139 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %140 = call i32 @rpcb_unset(i64 %137, i64 %138, %struct.netconfig* %139)
  br label %141

141:                                              ; preds = %134, %131
  %142 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %143 = icmp ne %struct.netconfig* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load %struct.servtab*, %struct.servtab** %2, align 8
  %146 = getelementptr inbounds %struct.servtab, %struct.servtab* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %3, align 8
  %149 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %150 = call i32 @rpcb_unset(i64 %147, i64 %148, %struct.netconfig* %149)
  br label %151

151:                                              ; preds = %144, %141
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %3, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %3, align 8
  br label %125

155:                                              ; preds = %125
  %156 = load %struct.servtab*, %struct.servtab** %2, align 8
  %157 = getelementptr inbounds %struct.servtab, %struct.servtab* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.servtab*, %struct.servtab** %2, align 8
  %162 = getelementptr inbounds %struct.servtab, %struct.servtab* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @close(i32 %163)
  br label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.servtab*, %struct.servtab** %2, align 8
  %167 = getelementptr inbounds %struct.servtab, %struct.servtab* %166, i32 0, i32 6
  store i32 -1, i32* %167, align 8
  %168 = load i64, i64* %5, align 8
  %169 = call i32 @sigsetmask(i64 %168)
  br label %170

170:                                              ; preds = %165, %109
  ret void
}

declare dso_local i64 @sigblock(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @print_service(i8*, %struct.servtab*) #1

declare dso_local i32 @rpcb_unset(i64, i64, %struct.netconfig*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sigsetmask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
