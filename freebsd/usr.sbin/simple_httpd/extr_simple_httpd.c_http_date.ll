; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/simple_httpd/extr_simple_httpd.c_http_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/simple_httpd/extr_simple_httpd.c_http_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Date: %a, %d %h %Y %H:%M:%S %Z\0D\0A\00", align 1
@con_sock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @http_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_date() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i8], align 16
  %3 = call i32 @time(i32* null)
  store i32 %3, i32* %1, align 4
  %4 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %5 = call i32 @gmtime(i32* %1)
  %6 = call i32 @strftime(i8* %4, i32 50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @con_sock, align 4
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %10 = call i32 @strlen(i8* %9)
  %11 = call i32 @write(i32 %7, i8* %8, i32 %10)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @gmtime(i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
