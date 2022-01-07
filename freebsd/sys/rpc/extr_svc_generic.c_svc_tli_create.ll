; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_generic.c_svc_tli_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc_generic.c_svc_tli_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32 }
%struct.socket = type { i32 }
%struct.netconfig = type { i8*, i32 }
%struct.t_bind = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.__rpc_sockinfo = type { i32, i32, i32 }
%struct.sockaddr_storage = type { i32, i32 }
%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"svc_tli_create: invalid netconfig\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"svc_tli_create: could not open connection for %s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"svc_tli_create: could not get transport information\0A\00", align 1
@curthread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"svc_tli_create: could not bind to anonymous port\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"svc_tli_create: could not bind to requested address\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"svc_tli_create: bad service type\00", align 1
@M_RPC = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@slen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @svc_tli_create(i32* %0, %struct.socket* %1, %struct.netconfig* %2, %struct.t_bind* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.netconfig*, align 8
  %11 = alloca %struct.t_bind*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.__rpc_sockinfo, align 4
  %17 = alloca %struct.sockaddr_storage, align 4
  store i32* %0, i32** %8, align 8
  store %struct.socket* %1, %struct.socket** %9, align 8
  store %struct.netconfig* %2, %struct.netconfig** %10, align 8
  store %struct.t_bind* %3, %struct.t_bind** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %15, align 8
  %19 = load %struct.socket*, %struct.socket** %9, align 8
  %20 = icmp ne %struct.socket* %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %6
  %22 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %23 = icmp eq %struct.netconfig* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %166

26:                                               ; preds = %21
  %27 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %28 = call %struct.socket* @__rpc_nconf2socket(%struct.netconfig* %27)
  store %struct.socket* %28, %struct.socket** %9, align 8
  %29 = load %struct.socket*, %struct.socket** %9, align 8
  %30 = icmp ne %struct.socket* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %33 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %166

36:                                               ; preds = %26
  %37 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %38 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %37, %struct.__rpc_sockinfo* %16)
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %15, align 8
  br label %47

40:                                               ; preds = %6
  %41 = load %struct.socket*, %struct.socket** %9, align 8
  %42 = call i32 @__rpc_socket2sockinfo(%struct.socket* %41, %struct.__rpc_sockinfo* %16)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %166

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load %struct.socket*, %struct.socket** %9, align 8
  %52 = call i32 @__rpc_sockisbound(%struct.socket* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %101, label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.t_bind*, %struct.t_bind** %11, align 8
  %56 = icmp eq %struct.t_bind* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.socket*, %struct.socket** %9, align 8
  %59 = call i64 @bindresvport(%struct.socket* %58, %struct.sockaddr* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = call i32 @memset(%struct.sockaddr_storage* %17, i32 0, i32 8)
  %63 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %16, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %17, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %16, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %17, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.socket*, %struct.socket** %9, align 8
  %70 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr*
  %71 = load i32, i32* @curthread, align 4
  %72 = call i64 @sobind(%struct.socket* %69, %struct.sockaddr* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %147

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %57
  %78 = load %struct.socket*, %struct.socket** %9, align 8
  %79 = load i32, i32* @curthread, align 4
  %80 = call i32 @solisten(%struct.socket* %78, i32 -1, i32 %79)
  br label %100

81:                                               ; preds = %54
  %82 = load %struct.socket*, %struct.socket** %9, align 8
  %83 = load %struct.t_bind*, %struct.t_bind** %11, align 8
  %84 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.sockaddr*
  %88 = call i64 @bindresvport(%struct.socket* %82, %struct.sockaddr* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %147

92:                                               ; preds = %81
  %93 = load %struct.socket*, %struct.socket** %9, align 8
  %94 = load %struct.t_bind*, %struct.t_bind** %11, align 8
  %95 = getelementptr inbounds %struct.t_bind, %struct.t_bind* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @curthread, align 4
  %99 = call i32 @solisten(%struct.socket* %93, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %77
  br label %101

101:                                              ; preds = %100, %50
  %102 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %16, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %123 [
    i32 128, label %104
    i32 129, label %117
  ]

104:                                              ; preds = %101
  %105 = load i32*, i32** %8, align 8
  %106 = load %struct.socket*, %struct.socket** %9, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call %struct.TYPE_10__* @svc_vc_create(i32* %105, %struct.socket* %106, i64 %107, i64 %108)
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %14, align 8
  %110 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %111 = icmp ne %struct.netconfig* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %114 = icmp ne %struct.TYPE_10__* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112, %104
  br label %125

116:                                              ; preds = %112
  br label %125

117:                                              ; preds = %101
  %118 = load i32*, i32** %8, align 8
  %119 = load %struct.socket*, %struct.socket** %9, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call %struct.TYPE_10__* @svc_dg_create(i32* %118, %struct.socket* %119, i64 %120, i64 %121)
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %14, align 8
  br label %125

123:                                              ; preds = %101
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %147

125:                                              ; preds = %117, %116, %115
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %127 = icmp eq %struct.TYPE_10__* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %147

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %16, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @__rpc_socktype2seman(i32 %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %136 = icmp ne %struct.netconfig* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %139 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* @M_RPC, align 4
  %142 = call i32 @strdup(i8* %140, i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %137, %129
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %7, align 8
  br label %166

147:                                              ; preds = %128, %123, %90, %74
  %148 = load i64, i64* %15, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.socket*, %struct.socket** %9, align 8
  %152 = call i32 @soclose(%struct.socket* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %155 = icmp ne %struct.TYPE_10__* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i64, i64* %15, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i32* null, i32** %161, align 8
  br label %162

162:                                              ; preds = %159, %156
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %164 = call i32 @xprt_unregister(%struct.TYPE_10__* %163)
  br label %165

165:                                              ; preds = %162, %153
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %166

166:                                              ; preds = %165, %145, %44, %31, %24
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %167
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.socket* @__rpc_nconf2socket(%struct.netconfig*) #1

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @__rpc_socket2sockinfo(%struct.socket*, %struct.__rpc_sockinfo*) #1

declare dso_local i32 @__rpc_sockisbound(%struct.socket*) #1

declare dso_local i64 @bindresvport(%struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @sobind(%struct.socket*, %struct.sockaddr*, i32) #1

declare dso_local i32 @solisten(%struct.socket*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @svc_vc_create(i32*, %struct.socket*, i64, i64) #1

declare dso_local %struct.TYPE_10__* @svc_dg_create(i32*, %struct.socket*, i64, i64) #1

declare dso_local i32 @__rpc_socktype2seman(i32) #1

declare dso_local i32 @strdup(i8*, i32) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @xprt_unregister(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
