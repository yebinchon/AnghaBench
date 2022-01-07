; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_evfilt_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_evfilt_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kqfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_evfilt_vnode() #0 {
  %1 = call i32 (...) @kqueue()
  store i32 %1, i32* @kqfd, align 4
  %2 = call i32 (...) @test_kevent_vnode_add()
  %3 = call i32 (...) @test_kevent_vnode_del()
  %4 = call i32 (...) @test_kevent_vnode_disable_and_enable()
  %5 = call i32 (...) @test_kevent_vnode_note_write()
  %6 = call i32 (...) @test_kevent_vnode_note_attrib()
  %7 = call i32 (...) @test_kevent_vnode_note_rename()
  %8 = call i32 (...) @test_kevent_vnode_note_delete()
  %9 = load i32, i32* @kqfd, align 4
  %10 = call i32 @close(i32 %9)
  ret void
}

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @test_kevent_vnode_add(...) #1

declare dso_local i32 @test_kevent_vnode_del(...) #1

declare dso_local i32 @test_kevent_vnode_disable_and_enable(...) #1

declare dso_local i32 @test_kevent_vnode_note_write(...) #1

declare dso_local i32 @test_kevent_vnode_note_attrib(...) #1

declare dso_local i32 @test_kevent_vnode_note_rename(...) #1

declare dso_local i32 @test_kevent_vnode_note_delete(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
