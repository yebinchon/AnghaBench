; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_server.c_server_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_server.c_server_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.sockaddr_l2cap = type { i32 }
%struct.sockaddr = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not accept %s connection. %s (%d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Rejecting %s connection from %s. Device not configured\00", align 1
@LOG_CRIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Could not open inbound session for %s\00", align 1
@W4INTR = common dso_local global i64 0, align 8
@OPEN = common dso_local global i64 0, align 8
@W4CTRL = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Accepted %s connection from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i64)* @server_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @server_accept(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.sockaddr_l2cap, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 4, i32* %10, align 4
  %11 = load i64, i64* %5, align 8
  %12 = bitcast %struct.sockaddr_l2cap* %8 to %struct.sockaddr*
  %13 = call i64 @accept(i64 %11, %struct.sockaddr* %12, i32* %10)
  store i64 %13, i64* %9, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25, i32 %26)
  store i64 -1, i64* %3, align 8
  br label %160

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %8, i32 0, i32 0
  %30 = call %struct.TYPE_13__* @get_hid_device(i32* %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %7, align 8
  %31 = icmp eq %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %41 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %8, i32 0, i32 0
  %42 = call i32 @bt_ntoa(i32* %41, i32* null)
  %43 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @close(i64 %44)
  store i64 -1, i64* %3, align 8
  br label %160

46:                                               ; preds = %28
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %8, i32 0, i32 0
  %49 = call %struct.TYPE_14__* @session_by_bdaddr(%struct.TYPE_15__* %47, i32* %48)
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %6, align 8
  %50 = icmp eq %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = call i32 (...) @write_hids_file()
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = call %struct.TYPE_14__* @session_open(%struct.TYPE_15__* %55, %struct.TYPE_13__* %56)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %6, align 8
  %58 = icmp eq %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load i32, i32* @LOG_CRIT, align 4
  %61 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %8, i32 0, i32 0
  %62 = call i32 @bt_ntoa(i32* %61, i32* null)
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @close(i64 %66)
  store i64 -1, i64* %3, align 8
  br label %160

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, -1
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = load i64, i64* @W4INTR, align 8
  br label %94

92:                                               ; preds = %75
  %93 = load i64, i64* @OPEN, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %121

98:                                               ; preds = %69
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, -1
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i64, i64* %9, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load i64, i64* @W4CTRL, align 8
  br label %117

115:                                              ; preds = %98
  %116 = load i64, i64* @OPEN, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i64 [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %94
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = call i32 @FD_SET(i64 %122, i32* %124)
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %121
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %121
  %136 = load i32, i32* @LOG_NOTICE, align 4
  %137 = load i64, i64* %5, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %144 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %8, i32 0, i32 0
  %145 = call i32 @bt_ntoa(i32* %144, i32* null)
  %146 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %143, i32 %145)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @OPEN, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %135
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %154 = call i64 @session_run(%struct.TYPE_14__* %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = call i32 @session_close(%struct.TYPE_14__* %157)
  store i64 -1, i64* %3, align 8
  br label %160

159:                                              ; preds = %152, %135
  store i64 0, i64* %3, align 8
  br label %160

160:                                              ; preds = %159, %156, %59, %32, %15
  %161 = load i64, i64* %3, align 8
  ret i64 %161
}

declare dso_local i64 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.TYPE_13__* @get_hid_device(i32*) #1

declare dso_local i32 @bt_ntoa(i32*, i32*) #1

declare dso_local i32 @close(i64) #1

declare dso_local %struct.TYPE_14__* @session_by_bdaddr(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @write_hids_file(...) #1

declare dso_local %struct.TYPE_14__* @session_open(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i64 @session_run(%struct.TYPE_14__*) #1

declare dso_local i32 @session_close(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
