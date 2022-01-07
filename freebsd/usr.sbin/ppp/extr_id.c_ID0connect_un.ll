; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_id.c_ID0connect_un.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_id.c_ID0connect_un.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@LogID0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d = connect(%d, \22%s\22, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ID0connect_un(i32 %0, %struct.sockaddr_un* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_un*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %4, align 8
  %6 = call i32 (...) @ID0set0()
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %9 = bitcast %struct.sockaddr_un* %8 to %struct.sockaddr*
  %10 = call i32 @connect(i32 %7, %struct.sockaddr* %9, i32 4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @LogID0, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %15 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @log_Printf(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %16, i32 4)
  %18 = call i32 (...) @ID0setuser()
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @ID0set0(...) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ID0setuser(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
