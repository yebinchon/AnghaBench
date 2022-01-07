; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/tls/ttls3/extr_tls-test-lib.c__init.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/tls/ttls3/extr_tls-test-lib.c__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_init() #0 {
  %1 = call i32 (...) @__gl_tls_init_offsets()
  %2 = call i32 @__GL_TLS_SET(i32 0, i8* inttoptr (i64 4278190080 to i8*))
  %3 = call i32 @__GL_TLS_SET(i32 1, i8* inttoptr (i64 4278190081 to i8*))
  %4 = call i32 @__GL_TLS_SET(i32 2, i8* inttoptr (i64 4278190082 to i8*))
  %5 = call i32 @__GL_TLS_SET(i32 3, i8* inttoptr (i64 4278190083 to i8*))
  %6 = call i32 @__GL_TLS_SET(i32 4, i8* inttoptr (i64 4278190084 to i8*))
  %7 = call i32 @__GL_TLS_SET(i32 5, i8* inttoptr (i64 4278190085 to i8*))
  %8 = call i32 @__GL_TLS_SET(i32 6, i8* inttoptr (i64 4278190086 to i8*))
  %9 = call i32 @__GL_TLS_SET(i32 7, i8* inttoptr (i64 4278190087 to i8*))
  ret void
}

declare dso_local i32 @__gl_tls_init_offsets(...) #1

declare dso_local i32 @__GL_TLS_SET(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
