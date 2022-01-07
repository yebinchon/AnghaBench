; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_accept_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_accept_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32, i32, i32 }
%struct.dcons_port = type { i32, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"port%d accepted\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_TELNET = common dso_local global i32 0, align 4
@IAC = common dso_local global i8 0, align 1
@WILL = common dso_local global i8 0, align 1
@TELOPT_SGA = common dso_local global i8 0, align 1
@DONT = common dso_local global i8 0, align 1
@TELOPT_LINEMODE = common dso_local global i8 0, align 1
@TELOPT_ECHO = common dso_local global i8 0, align 1
@DO = common dso_local global i8 0, align 1
@TELOPT_BINARY = common dso_local global i8 0, align 1
@DCONS_GDB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"discard %d chars on GDB port\0A\00", align 1
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*, %struct.dcons_port*)* @dconschat_accept_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconschat_accept_socket(%struct.dcons_state* %0, %struct.dcons_port* %1) #0 {
  %3 = alloca %struct.dcons_state*, align 8
  %4 = alloca %struct.dcons_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kevent, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca [3 x i8], align 1
  %12 = alloca [3 x i8], align 1
  %13 = alloca [2048 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.dcons_state* %0, %struct.dcons_state** %3, align 8
  store %struct.dcons_port* %1, %struct.dcons_port** %4, align 8
  %15 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %16 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %21 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %24 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @accept(i32 %22, i32 %27, i32* %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %2
  %34 = load i64, i64* @verbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %38 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @F_GETFL, align 4
  %44 = call i32 @fcntl(i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @O_NDELAY, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @F_SETFL, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @fcntl(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %53 = call i64 @IS_CONSOLE(%struct.dcons_port* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %101

55:                                               ; preds = %41
  %56 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %57 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @F_TELNET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %101

62:                                               ; preds = %55
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %64 = load i8, i8* @IAC, align 1
  store i8 %64, i8* %63, align 1
  %65 = getelementptr inbounds i8, i8* %63, i64 1
  %66 = load i8, i8* @WILL, align 1
  store i8 %66, i8* %65, align 1
  %67 = getelementptr inbounds i8, i8* %65, i64 1
  %68 = load i8, i8* @TELOPT_SGA, align 1
  store i8 %68, i8* %67, align 1
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %70 = load i8, i8* @IAC, align 1
  store i8 %70, i8* %69, align 1
  %71 = getelementptr inbounds i8, i8* %69, i64 1
  %72 = load i8, i8* @DONT, align 1
  store i8 %72, i8* %71, align 1
  %73 = getelementptr inbounds i8, i8* %71, i64 1
  %74 = load i8, i8* @TELOPT_LINEMODE, align 1
  store i8 %74, i8* %73, align 1
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %76 = load i8, i8* @IAC, align 1
  store i8 %76, i8* %75, align 1
  %77 = getelementptr inbounds i8, i8* %75, i64 1
  %78 = load i8, i8* @WILL, align 1
  store i8 %78, i8* %77, align 1
  %79 = getelementptr inbounds i8, i8* %77, i64 1
  %80 = load i8, i8* @TELOPT_ECHO, align 1
  store i8 %80, i8* %79, align 1
  %81 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %82 = load i8, i8* @IAC, align 1
  store i8 %82, i8* %81, align 1
  %83 = getelementptr inbounds i8, i8* %81, i64 1
  %84 = load i8, i8* @DO, align 1
  store i8 %84, i8* %83, align 1
  %85 = getelementptr inbounds i8, i8* %83, i64 1
  %86 = load i8, i8* @TELOPT_BINARY, align 1
  store i8 %86, i8* %85, align 1
  %87 = load i32, i32* %6, align 4
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %89 = call i32 @write(i32 %87, i8* %88, i32 3)
  %90 = load i32, i32* %6, align 4
  %91 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %92 = call i32 @write(i32 %90, i8* %91, i32 3)
  %93 = load i32, i32* %6, align 4
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %95 = call i32 @write(i32 %93, i8* %94, i32 3)
  %96 = load i32, i32* %6, align 4
  %97 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %98 = call i32 @write(i32 %96, i8* %97, i32 3)
  %99 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %100 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %62, %55, %41
  %102 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %103 = call i64 @IS_GDB(%struct.dcons_port* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %118, %105
  %107 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %108 = load i32, i32* @DCONS_GDB, align 4
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %110 = call i32 @dconschat_read_dcons(%struct.dcons_state* %107, i32 %108, i8* %109, i32 2048)
  store i32 %110, i32* %14, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i64, i64* @verbose, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %112
  br label %106

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %101
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %123 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %125 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @EVFILT_READ, align 4
  %128 = load i32, i32* @EV_ADD, align 4
  %129 = load i32, i32* @NOTE_LOWAT, align 4
  %130 = load %struct.dcons_port*, %struct.dcons_port** %4, align 8
  %131 = bitcast %struct.dcons_port* %130 to i8*
  %132 = call i32 @EV_SET(%struct.kevent* %8, i32 %126, i32 %127, i32 %128, i32 %129, i32 1, i8* %131)
  %133 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %134 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %137 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %136, i32 0, i32 1
  %138 = call i32 @kevent(i32 %135, %struct.kevent* %8, i32 1, i32* null, i32 0, i32* %137)
  ret i32 0
}

declare dso_local i32 @accept(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @IS_CONSOLE(%struct.dcons_port*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @IS_GDB(%struct.dcons_port*) #1

declare dso_local i32 @dconschat_read_dcons(%struct.dcons_state*, i32, i8*, i32) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
